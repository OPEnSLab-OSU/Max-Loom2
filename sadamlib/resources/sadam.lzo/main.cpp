/*
 main.cpp -- Compression/Decompression object using the LZO Library
 
 This file is part of the sadam Library. This file is licensed under GPLv2.
 The rest of the sadam Library is licensed under a different license.
 
 Copyright (C) 2010 Adam Siska
 All Rights Reserved.
 
 You should have received a copy of the GNU General Public License
 along with this file; see the file COPYING.
 If not, write to the Free Software Foundation, Inc.,
 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
 
 Adam Siska (www.sadam.hu)
*/



#include <iostream>
#include <set>
#include <vector>
#include <new>
#include <lzo/lzoconf.h>
#include <lzo/lzo1x.h>
#include "ext.h"
#include "ext_obex.h"
#include "ext_globalsymbol.h"
#include "sadam.stream.h"


#define KEYWORD_COMPRESS "compress"
#define MAX_LEN          8192
#define INLET_NUMBER     1
#define LZO_INIT_ERROR   "LZO library failed initialization process. Error code: %d."
#define LZO_COMP_ERROR   "LZO internal error - compression failed. Error code: %d."
#define MEM_ERROR        "Out of memory."
#define MSG_ERROR        "Message too long. Try increasing the buffer size."
#define BUF_ERROR        "Internal buffer too small. The internal buffer needs at least 69 bytes."



namespace sadam {
	
	
	static const lzo_byte   EndOfMsg = 0;
	static const lzo_byte   IntMsg = 1;
	static const lzo_byte   FloatMsg = 2;
	static const lzo_byte   StrMsg = 3;
	static const lzo_byte   BangMsg = 4;
	static const t_symbol * sym_bang = gensym ( "bang" );
	static const t_symbol * sym_int = gensym ( "int" );
	static const t_symbol * sym_float = gensym ( "float" );
	static const t_symbol * sym_list = gensym ( "list" );
	
	
	class lzo {
	public:
		static t_class * classPtr;
		static int       lzo_errcode;          // LZO initialization error code (0 if initialization succeeded).
		static void * create ( t_symbol *, const long, t_atom * );
		static void   destroy ( t_object * );
		static void   bang ( lzo * );
		static void   in ( lzo *, const long );
		static void   ft ( lzo *, const double );
		static void   anything ( lzo *, t_symbol *, const long, t_atom * );
		static void   registerStream ( lzo *, t_symbol * );
		static void   unregisterStream ( lzo *, t_symbol * );
		static void   bindStream ( lzo *, t_symbol * );
		static void   assist ( lzo *, void *, const long, const long, char * );
		static void   notify ( lzo *, t_symbol *, t_symbol *, void *, void * );
		
	protected:
		t_object                object;
		void *                  outlet0;
		void *                  outlet1;
		void *                  proxy;
		long                    inlet;
		std::set < t_symbol * > streams;
		lzo_bytep               originalBuffer;       // Pointer to the buffer containing the original data.
		lzo_bytep               compressedBuffer;     // Pointer to the buffer containing the compressed data.
		lzo_bytep               encBuffer;            // Pointer to the buffer containing the encrypted compressed data.
		lzo_bytep               workBuffer;           // Working buffer for the LZO algorithm.
		lzo_bytep               originalPosition;     // Pointer to the end of the buffer containing the original data.
		size_t                  originalBufferSize;   // Full size of the buffer for holding the original data.
		size_t                  compressedBufferSize; // Full size of the buffer for holding the compressed data.
		size_t                  encBufferSize;        // Full size of the buffer for holding the encrypted compressed data.
		bool                    isCompressor;         // true if the object compresses data, false if it decompresses data.
		bool                    isValid;              // true if the object was successfully initialized, false if not.
		lzo ( t_symbol *, int, t_atom * );
		~lzo ( void );
		void addInput ( const t_symbol *, int, t_atom * );
		void addDataToBuffer ( const void *, size_t, lzo_byte );
		void sendMessages ( void );
		void compress ( void );
		void decompress ( const std::vector < unsigned char > & );
		void decompress ( const t_symbol *, const int &, t_atom * );
		
	};
	
	
	t_class * lzo::classPtr = NULL;
	int lzo::lzo_errcode;
	
	
	void * lzo::create ( t_symbol * sym, const long argc, t_atom * argv ) {
		void * x;
		lzo *  newLzo;
		
		x = object_alloc ( lzo::classPtr );
		new ( x ) lzo ( sym, argc, argv );
		newLzo = ( lzo * ) x;
		if ( newLzo && ! newLzo->isValid ) {
			delete newLzo;
			return NULL;
		}
		return ( lzo * ) x;
		
	}
	
	
	void lzo::destroy ( t_object * x ) {
		
		( ( lzo * ) x )->~lzo ( );
		
	}
	
	
	void lzo::bang ( lzo * x ) {
		
		if ( x->lzo_errcode != LZO_E_OK ) {
			object_error ( ( t_object * ) x, LZO_INIT_ERROR, x->lzo_errcode );
			return;
		}
		if ( x->isCompressor ) {
			if ( proxy_getinlet ( ( t_object * ) x ) != INLET_NUMBER ) {
				x->compress ( );
			} else {
				x->addInput ( sym_bang, 0, NULL );
			}
		} else {
			x->sendMessages ( );
		}
		
	}
	
	
	void lzo::in ( lzo * x, const long l ) {
		
		if ( x->lzo_errcode != LZO_E_OK ) {
			object_error ( ( t_object * ) x, LZO_INIT_ERROR, x->lzo_errcode );
			return;
		}
		if ( x->isCompressor && proxy_getinlet ( ( t_object * ) x ) == INLET_NUMBER ) {
			t_atom a;
			atom_setlong ( & a, l );
			x->addInput ( sym_int, 1, & a );
		}
		
	}
	
	
	void lzo::ft ( lzo * x, const double d ) {
		
		if ( x->lzo_errcode != LZO_E_OK ) {
			object_error ( ( t_object * ) x, LZO_INIT_ERROR, x->lzo_errcode );
			return;
		}
		if ( x->isCompressor && proxy_getinlet ( ( t_object * ) x ) == INLET_NUMBER ) {
			t_atom a;
			atom_setfloat ( & a, d );
			x->addInput ( sym_float, 1, & a );
		}
		
	}
	
	
	void lzo::anything ( lzo * x, t_symbol * sym, const long argc, t_atom * argv ) {
		
		if ( x->lzo_errcode != LZO_E_OK ) {
			object_error ( ( t_object * ) x, LZO_INIT_ERROR, x->lzo_errcode );
			return;
		}
		if ( x->isCompressor ) {
			if ( proxy_getinlet ( ( t_object * ) x ) == INLET_NUMBER ) {
				x->addInput ( sym, argc, argv );
			}
		} else {
			x->decompress ( sym, argc, argv );
		}
		
	}
	
	
	void lzo::registerStream ( lzo * x, t_symbol * name ) {
		
		if ( x->isCompressor && name != stream_empty ) {
			x->streams.insert ( name );
		} else {
			if ( name != stream_empty && x->streams.find ( name ) == x->streams.end ( ) ) {
				globalsymbol_reference ( ( t_object * ) x, name->s_name, stream_classname->s_name );
				x->streams.insert ( name );
			}
		}
		
	}
	
	
	void lzo::unregisterStream ( lzo * x, t_symbol * name ) {
		
		if ( x->isCompressor ) {
			x->streams.erase ( name );
		} else {
			if ( name != stream_empty && x->streams.find ( name ) != x->streams.end ( ) ) {
				globalsymbol_dereference ( ( t_object * ) x, name->s_name, stream_classname->s_name );
				x->streams.erase ( name );
			}
		}
		
	}
	
	
	void lzo::bindStream ( lzo * x, t_symbol * name ) {
		
		if ( x->isCompressor ) {
			x->streams.clear ( );
			if ( name != stream_empty ) {
				x->streams.insert ( name );
			}
		} else {
			for ( std::set < t_symbol * >::iterator iterator = x->streams.begin ( ); iterator != x->streams.end ( ); ++ iterator ) {
				globalsymbol_dereference ( ( t_object * ) x, ( * iterator )->s_name, stream_classname->s_name );
			}
			x->streams.clear ( );
			if ( name != stream_empty ) {
				globalsymbol_reference ( ( t_object * ) x, name->s_name, stream_classname->s_name );
				x->streams.insert ( name );
			}
		}
		
	}
	
	
	void lzo::assist ( lzo * x, void * b, const long m, const long a, char * s ) {
		
		if ( x->isCompressor ) {
			if ( m == ASSIST_INLET ) {
				switch ( a ) {
					case 0:
						sprintf ( s, "(bang) Trigger Compression" );
						break;
					case 1:
						sprintf ( s, "(anything) Messages to be Compressed" );
						break;
				}
			} 
			else {
				switch ( a ) {
					case 0:
						sprintf ( s, "(symbol) Compressed Data" );
						break;
					case 1:
						sprintf ( s, "(float) Compression Ratio" );
						break;
				}
			}
		} else {
			if ( m == ASSIST_INLET ) {
				sprintf ( s, "(symbol) Messages to be Decompressed; (bang) Trigger Last Output Again" );
			} 
			else {
				switch ( a ) {
					case 0:
						sprintf ( s, "(anything) Decompressed Data" );
						break;
					case 1:
						sprintf ( s, "(int) Decompression Error Code" );
						break;
				}
			}
		}
		
	}
	
	
	void lzo::notify ( lzo * x, t_symbol * s, t_symbol * msg, void * sender, void * data ) {
		
		if ( ! x->isCompressor && msg == stream_before_clear ) {
			x->decompress ( * ( std::vector < unsigned char > * ) data );
		}
		
	}
	
	
	lzo::lzo ( t_symbol * sym, int argc, t_atom * argv ) {
		long int maxBufferSize;
		
		isValid = false;
		proxy = NULL;
		if ( lzo_errcode != LZO_E_OK ) {
			object_error ( ( t_object * ) this, LZO_INIT_ERROR, lzo_errcode );
			return;
		}
		// Test if object is in compressor mode
		isCompressor = argc && atom_gettype ( argv ) == A_SYM && ! strcmp ( KEYWORD_COMPRESS, atom_getsym ( argv )->s_name );
		// Test for first argument. If it in not a LONG, ignore it.
		if ( argc && atom_gettype ( argv ) != A_LONG ) {
			-- argc;
			++ argv;
		}
		// Search for the first LONG parameter. All other symbols register the respective streams.
		while ( argc && atom_gettype ( argv ) != A_LONG ) {
			if ( atom_gettype ( argv ) == A_SYM ) {
				lzo::registerStream ( this, atom_getsym ( argv ) );
			}
			-- argc;
			++ argv;
		}
		// If a LONG found, set the maximum buffer size.
		maxBufferSize = ( std::max ) ( argc ? atom_getlong ( argv ) : MAX_LEN, 0L );
		// If there are remaining symbol parameters, register them as streams.
		while ( argc ) {
			if ( atom_gettype ( argv ) == A_SYM ) {
				lzo::registerStream ( this, atom_getsym ( argv ) );
			}
			-- argc;
			++ argv;
		}
		compressedBufferSize = maxBufferSize;
		originalBufferSize = ( 16 * ( maxBufferSize - 64 - 3 ) / 17 > 0 ? 16 * ( maxBufferSize - 64 - 3 ) / 17 : 0 );
		encBufferSize = 2 + compressedBufferSize * 255 / 254;
		if ( ! ( originalBufferSize * compressedBufferSize * encBufferSize ) ) {
			object_error ( ( t_object * ) this, BUF_ERROR );
			return;
		}
		originalBuffer = new lzo_byte [ originalBufferSize ];
		compressedBuffer = new lzo_byte [ compressedBufferSize ];
		encBuffer = new lzo_byte [ encBufferSize ];
		workBuffer = new lzo_byte [ LZO1X_999_MEM_COMPRESS ];
		originalPosition = originalBuffer;
		if ( originalBuffer == NULL || compressedBuffer == NULL || encBuffer == NULL || workBuffer == NULL ) {
			object_error ( ( t_object * ) this, MEM_ERROR );
			return;
		}
		if ( isCompressor ) {
			proxy = proxy_new ( ( t_object * ) this, INLET_NUMBER, & inlet );
			outlet1 = floatout ( ( t_object * ) this );
		} else {
			outlet1 = intout ( ( t_object * ) this );
		}
		outlet0 = outlet_new ( this, NULL );
		isValid = true;
		
	}
	
	
	lzo::~lzo ( void ) {
		
		delete [ ] originalBuffer;
		delete [ ] compressedBuffer;
		delete [ ] encBuffer;
		delete [ ] workBuffer;
		if ( proxy ) {
			object_free ( proxy );
		}
		if ( ! isCompressor ) {
			for ( std::set < t_symbol * >::iterator iterator = streams.begin ( ); iterator != streams.end ( ); ++ iterator ) {
				globalsymbol_dereference ( ( t_object * ) this, ( * iterator )->s_name, stream_classname->s_name );
			}
		}
		
	}
	
	
	void lzo::addInput ( const t_symbol * sym, int argc, t_atom * argv ) {
		size_t dataSize;
		
		if ( sym != sym_int && sym != sym_float && sym != sym_list ) {
			if ( sym != sym_bang ) {
				const lzo_bytep value = ( lzo_bytep ) sym->s_name;
				dataSize = ( strlen ( ( char * ) value ) + 1 ) * sizeof ( lzo_byte );
				addDataToBuffer ( value, dataSize, StrMsg );
			} else {
				addDataToBuffer ( NULL, 0, BangMsg );
			}
		}
		while ( argc -- ) {
			switch ( atom_gettype ( argv ) ) {
				case A_LONG: {
					long value = atom_getlong ( argv );
					dataSize = sizeof ( value );
					addDataToBuffer ( & value, dataSize, IntMsg );
					break;
				}
				case A_FLOAT: {
					float value = atom_getfloat ( argv );
					dataSize = sizeof ( value );
					addDataToBuffer ( & value, dataSize, FloatMsg );
					break;
				}
				case A_SYM: {
					const lzo_bytep value = ( lzo_bytep ) atom_getsym ( argv )->s_name;
					dataSize = ( strlen ( ( char * ) value ) + 1 ) * sizeof ( lzo_byte );
					addDataToBuffer ( value, dataSize, StrMsg );
					break;
				}
			}
			++ argv;
		}
		addDataToBuffer ( NULL, 0, EndOfMsg );
		
	}
	
	
	void lzo::addDataToBuffer ( const void * data, size_t dataSize, lzo_byte dataType ) {
		
		dataSize += sizeof ( dataType );
		if ( ( originalPosition - originalBuffer ) + ( ( long int ) dataSize - ( long int ) originalBufferSize ) > 0 ) {
			compress ( );
		}
		if ( ( originalPosition - originalBuffer ) + ( ( long int ) dataSize - ( long int ) originalBufferSize ) <= 0 ) {
			* originalPosition ++ = dataType;
			if ( data != NULL ) {
				dataSize -= sizeof ( dataType );
				memcpy ( originalPosition, data, dataSize );
				originalPosition += dataSize;
			}
		} else {
			object_error ( ( t_object * ) this, MSG_ERROR );
		}
		
	}
	
	
	void lzo::sendMessages ( void ) {
		lzo_bytep    currentPosition;
		t_atom *     currentAtom;
		t_linklist * outputList;
		bool         isFinished;
		
		outputList = ( t_linklist * ) linklist_new ( );
		linklist_flags ( outputList, OBJ_FLAG_MEMORY );
		currentPosition = originalBuffer;
		isFinished = false;
		while ( currentPosition < originalPosition ) {
			switch ( * currentPosition ++ ) {
				case IntMsg:
					long l;
					memcpy ( & l, currentPosition, sizeof ( l ) );
					currentAtom = ( t_atom * ) sysmem_newptr ( sizeof ( t_atom ) );
					atom_setlong ( currentAtom, l );
					linklist_append ( outputList, currentAtom );
					currentPosition += sizeof ( l );
					break;
				case FloatMsg:
					float f;
					memcpy ( & f, currentPosition, sizeof ( f ) );
					currentAtom = ( t_atom * ) sysmem_newptr ( sizeof ( t_atom ) );
					atom_setfloat ( currentAtom, f );
					linklist_append ( outputList, currentAtom );
					currentPosition += sizeof ( f );
					break;
				case StrMsg:
					char * s;
					s = ( char * ) currentPosition;
					currentAtom = ( t_atom * ) sysmem_newptr ( sizeof ( t_atom ) );
					atom_setsym ( currentAtom, gensym ( s ) );
					linklist_append ( outputList, currentAtom );
					currentPosition += ( strlen ( s ) + 1 ) * sizeof ( char ) / sizeof ( lzo_byte );
					break;
				case BangMsg:
					outlet_bang ( outlet0 );
					linklist_clear ( outputList );
					break;
				case EndOfMsg:
				EndOfFunction:
					if ( linklist_getsize ( outputList ) > 0 ) {
						currentAtom = ( t_atom * ) linklist_getindex ( outputList, 0 );
						if ( linklist_getsize ( outputList ) == 1 ) {
							switch ( atom_gettype ( currentAtom ) ) {
								case A_LONG:
									outlet_int ( outlet0, atom_getlong ( currentAtom ) );
									break;
								case A_FLOAT:
									outlet_float ( outlet0, atom_getfloat ( currentAtom ) );
									break;
								case A_SYM:
									outlet_anything ( outlet0, atom_getsym ( currentAtom ), 0, NULL );
									break;
							}
						} else {
							long      argc;
							t_atom ** atomPtr;
							t_atom *  argv;
							if ( atom_gettype ( currentAtom ) == A_SYM ) {
								argc = linklist_getsize ( outputList );
								atomPtr = ( t_atom ** ) sysmem_newptr ( argc * sizeof ( t_atom * ) );
								argv = ( t_atom * ) sysmem_newptr ( ( argc - 1 ) * sizeof ( t_atom ) );
								linklist_makearray ( outputList, ( void ** ) atomPtr, argc );
								-- argc;
								for ( long i = 0; i < argc; ++ i ) {
									argv [ i ].a_type = atomPtr [ i + 1 ]->a_type;
									argv [ i ].a_w = atomPtr [ i + 1 ]->a_w;
								}
								outlet_anything ( outlet0, atom_getsym ( currentAtom ), argc, argv );
								sysmem_freeptr ( atomPtr );
								sysmem_freeptr ( argv );
							} else {
								argc = linklist_getsize ( outputList );
								atomPtr = ( t_atom ** ) sysmem_newptr ( argc * sizeof ( t_atom * ) );
								argv = ( t_atom * ) sysmem_newptr ( argc * sizeof ( t_atom ) );
								linklist_makearray ( outputList, ( void ** ) atomPtr, argc );
								for ( long i = 0; i < argc; ++ i ) {
									argv [ i ].a_type = atomPtr [ i ]->a_type;
									argv [ i ].a_w = atomPtr [ i ]->a_w;
								}
								outlet_list ( outlet0, NULL, argc, argv );
								sysmem_freeptr ( atomPtr );
								sysmem_freeptr ( argv );
							}
						}
						linklist_clear ( outputList );
					}
					break;
			}
		}
		if ( ! isFinished ) {
			isFinished = true;
			goto EndOfFunction;
		}
		object_free ( outputList );
		
	}
	
	
	void lzo::compress ( void ) {
		lzo_uint                      originalSize;
		lzo_uint                      compressedSize;
		int                           result;
		lzo_bytep                     compressedPosition;
		lzo_bytep                     encPosition;
		lzo_uint                      count;
		void *                        stream;
		std::vector < unsigned char > compressedData;
		
		originalSize = originalPosition - originalBuffer;
		result = lzo1x_999_compress ( originalBuffer, originalSize, compressedBuffer, & compressedSize, workBuffer );
		if ( result == LZO_E_OK ) {
			// Output the compression ratio.
			outlet_float ( outlet1, compressedSize / ( float ) originalSize );
			// Output compressed data to registered streams
			if ( streams.size ( ) ) {
				compressedData.assign ( compressedBuffer, compressedBuffer + compressedSize );
			}
			for ( std::set < t_symbol * >::iterator iterator = streams.begin ( ); iterator != streams.end ( ); ++ iterator ) {
				stream = globalsymbol_reference ( ( t_object * ) this, ( * iterator )->s_name, stream_classname->s_name );
				if ( stream ) {
					object_method ( stream, stream_addarray, & compressedData );
					object_method ( stream, stream_clear );
					globalsymbol_dereference ( ( t_object * ) this, ( * iterator )->s_name, stream_classname->s_name );
				}
			}
			// Converting binary data to string.
			compressedPosition = compressedBuffer;
			encPosition = encBuffer;
			while ( compressedSize ) {
				count = 0;
				while ( count < 254 && compressedSize -- && * ( compressedPosition + count ) ) {
					++ count;
				}
				* encPosition ++ = ( unsigned char ) ~ ( unsigned char ) count;
				lzo_memcpy ( encPosition, compressedPosition, count );
				compressedPosition += count;
				if ( count != 0xFE ) {
					++ compressedPosition;
				}
				encPosition += count;
			};
			* encPosition = NULL;
			// Output converted result.
			outlet_anything ( outlet0, gensym ( ( char * ) encBuffer ), 0, NULL );
		} else {
			// This should actually never happen.
			object_error ( ( t_object * ) this, LZO_COMP_ERROR, result );
			return;
		}
		originalPosition = originalBuffer;
		
	}
	
	
	void lzo::decompress ( const std::vector < unsigned char > & data ) {
		lzo_uint     originalSize;
		lzo_uint     compressedSize;
		lzo_uint     count;
		int          result;
		
		// Reading data from stream.
		compressedSize = data.size ( );
		count = compressedSize;
		if ( count > compressedBufferSize ) {
			count = compressedBufferSize;
		}
		lzo_memcpy ( compressedBuffer, & ( data [ 0 ] ), count );
		// Test if the received message fits into the input buffer.
		if ( compressedSize > compressedBufferSize ) {
			outlet_int ( outlet1, -1 );
			return;
		}
		// Decompressing data.
		originalSize = originalBufferSize;
		result = lzo1x_decompress_safe ( compressedBuffer, compressedSize, originalBuffer, & originalSize, NULL );
		// Output the error code.
		outlet_int ( outlet1, result );
		if ( result == LZO_E_OK ) {
			// Send out the messages.
			originalPosition = originalBuffer + originalSize;
			sendMessages ( );
		}
		
	}
	
	
	void lzo::decompress ( const t_symbol * sym, const int & argc, t_atom * argv ) {
		const char * encStr;
		lzo_uint     originalSize;
		lzo_uint     compressedSize;
		lzo_bytep    compressedPosition;
		lzo_uint     count;
		int          result;
		
		// Converting string to binary data.
		encStr = sym->s_name;
		compressedPosition = compressedBuffer;
		compressedSize = 0;
		while ( * encStr && compressedSize <= compressedBufferSize ) {
			count = ( unsigned char ) ~ ( unsigned char ) ( * encStr ++ );
			compressedSize += count;
			if ( compressedSize > compressedBufferSize ) break;
			lzo_memcpy ( compressedPosition, encStr, count );
			encStr += count;
			compressedPosition += count;
			if ( count != 0xFE ) {
				++ compressedSize;
				if ( compressedSize > compressedBufferSize ) break;
				* compressedPosition ++ = 0;
			}
		}
		// Test if the received message fits into the input buffer.
		if ( compressedSize > compressedBufferSize ) {
			outlet_int ( outlet1, -1 );
			return;
		}
		// Decompressing data.
		originalSize = originalBufferSize;
		result = lzo1x_decompress_safe ( compressedBuffer, compressedSize, originalBuffer, & originalSize, NULL );
		// Output the error code.
		outlet_int ( outlet1, result );
		if ( result == LZO_E_OK ) {
			// Send out the messages.
			originalPosition = originalBuffer + originalSize;
			sendMessages ( );
		}
		
	}
	
	
}



extern "C" {
	
	int main ( int argc, const char * argv [ ] ) {
		
		sadam::lzo::lzo_errcode = lzo_init ( );
		if ( sadam::lzo::lzo_errcode != LZO_E_OK ) {
			error ( LZO_INIT_ERROR, sadam::lzo::lzo_errcode );
			return sadam::lzo::lzo_errcode;
		}
		common_symbols_init ( );
		sadam::lzo::classPtr = class_new ( "sadam.lzo", ( method ) sadam::lzo::create, ( method ) sadam::lzo::destroy, sizeof ( sadam::lzo ), 0L, A_GIMME, 0 );
		class_addmethod ( sadam::lzo::classPtr, ( method ) sadam::lzo::anything, "anything", A_GIMME, 0 );
		class_addmethod ( sadam::lzo::classPtr, ( method ) sadam::lzo::in, "int", A_LONG, 0 );
		class_addmethod ( sadam::lzo::classPtr, ( method ) sadam::lzo::ft, "float", A_FLOAT, 0 );
		class_addmethod ( sadam::lzo::classPtr, ( method ) sadam::lzo::bang, "bang", 0 );
		class_addmethod ( sadam::lzo::classPtr, ( method ) sadam::lzo::registerStream, "register", A_SYM, 0 );
		class_addmethod ( sadam::lzo::classPtr, ( method ) sadam::lzo::unregisterStream, "unregister", A_SYM, 0 );
		class_addmethod ( sadam::lzo::classPtr, ( method ) sadam::lzo::bindStream, "bind", A_DEFSYM, 0 );
		class_addmethod ( sadam::lzo::classPtr, ( method ) sadam::lzo::assist, "assist", A_CANT, 0 );
		class_addmethod ( sadam::lzo::classPtr, ( method ) sadam::lzo::notify, "notify", A_CANT, 0 );
		class_addmethod ( sadam::lzo::classPtr, ( method ) stdinletinfo, "inletinfo", A_CANT, 0 );
		class_register ( CLASS_BOX, sadam::lzo::classPtr );
		post ( "[sadam.lzo] Compression-decompression object using the LZO library (www.oberhumer.com/opensource/lzo)." );
		post ( "     Copyright (C) 2010 Adam Siska (www.sadam.hu)" );
		post ( "     All Rights Reserved." );
		post ( "     The LZO Library, version %s, %s", LZO_VERSION_STRING, LZO_VERSION_DATE );
		post ( "     Copyright (C) 1996-2008 Markus Franz Xaver Johannes Oberhumer" );
		post ( "     All Rights Reserved." );
		return 0;
		
	}
	
}

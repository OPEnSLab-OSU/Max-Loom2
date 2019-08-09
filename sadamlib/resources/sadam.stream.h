/*
 sadam.stream.h -- Header file for externals compatible with [sadam.stream].
 
 Copyright (C) çd‡m Siska, 2010--2014
 http://www.sadam.hu
 
 This work -- just as the rest of The sadam Library -- comes with absolute no warranty.
 
 This work is licensed under the Creative Commons Attribution 3.0 Unported License.
 To view a copy of this license, visit http://creativecommons.org/licenses/by/3.0/
 or send a letter to Creative Commons, 171 Second Street, Suite 300, San Francisco,
 California, 94105, USA.
*/

#ifndef __sadam_stream_H__
#define __sadam_stream_H__



#include "ext_proto.h"



#ifdef __cplusplus

namespace sadam {
	
	// Symbols to identify notifications sent by [sadam.stream] in the object's notify method.
	t_symbol * stream_binding        = gensym ( "globalsymbol_binding" );
	t_symbol * stream_unbinding      = gensym ( "globalsymbol_unbinding" );
	t_symbol * stream_before_change  = gensym ( "before_change" );
	t_symbol * stream_before_clear   = gensym ( "before_clear" );
	t_symbol * stream_after_change   = gensym ( "after_change" );
	t_symbol * stream_after_clear    = gensym ( "after_clear" );
	
	// Common symbols
	t_symbol * stream_empty          = gensym ( "" );
	t_symbol * stream_classname      = gensym ( "sadam.stream" );
	
	// Messages that may be sent to a [sadam.stream] object using the SDK function object_method().
	t_symbol * stream_notifyonchange = gensym ( "notifyonchange" );         // Parameters: const long toggle_value
	t_symbol * stream_size           = gensym ( "internal_size" );          // Parameters: unsigned long * returned_size
	t_symbol * stream_getname        = gensym ( "internal_getname" );       // Parameters: t_symbol ** returned_name
	t_symbol * stream_addbyte        = gensym ( "internal_addbyte" );       // Parameters: const unsigned char byte_to_add
	t_symbol * stream_addarray       = gensym ( "internal_addarray" );      // Parameters: const std::vector < unsigned char > * array_to_add
	t_symbol * stream_getbyte        = gensym ( "internal_getbyte" );       // Parameters: const unsigned long position, unsigned char * returned_byte
	t_symbol * stream_getarray       = gensym ( "internal_getarray" );      // Parameters: const unsigned long start_position, const unsigned long end_position, std::vector < unsigned char > * returned_array
	t_symbol * stream_insertbyte     = gensym ( "internal_insertbyte" );    // Parameters: const unsigned long position, const unsigned char byte_to_insert
	t_symbol * stream_insertarray    = gensym ( "internal_insertarray" );   // Parameters: const unsigned long position, const std::vector < unsigned char > * array_to_insert
	t_symbol * stream_erasebyte      = gensym ( "internal_erasebyte" );     // Parameters: const unsigned long position
	t_symbol * stream_erasearray     = gensym ( "internal_erasearray" );    // Parameters: const unsigned long start_position, const unsigned long end_position
	t_symbol * stream_replacebyte    = gensym ( "internal_replacebyte" );   // Parameters: const unsigned long position, const unsigned char byte_to_replace
	t_symbol * stream_replacearray   = gensym ( "internal_replacearray" );  // Parameters: const unsigned long start_position, const unsigned long end_position, const std::vector < unsigned char > * array_to_replace
	t_symbol * stream_clear          = gensym ( "internal_clear" );         // (No Parameters)
	
}

#else

t_symbol * stream_before_change;
t_symbol * stream_before_clear;
t_symbol * stream_after_change;
t_symbol * stream_after_clear;
t_symbol * stream_binding;
t_symbol * stream_unbinding;

t_symbol * stream_empty;
t_symbol * stream_classname;

t_symbol * stream_notifyonchange;
t_symbol * stream_size;
t_symbol * stream_getname;
t_symbol * stream_addbyte;
t_symbol * stream_addarray;
t_symbol * stream_getbyte;
t_symbol * stream_getarray;
t_symbol * stream_insertbyte;
t_symbol * stream_insertarray;
t_symbol * stream_erasebyte;
t_symbol * stream_erasearray;
t_symbol * stream_replacebyte;
t_symbol * stream_replacearray;
t_symbol * stream_clear;

// Call this method in your class initializer function.
static void sadam_stream_initcommonsymbols ( void ) {
	
	stream_binding = gensym ( "globalsymbol_binding" );
	stream_unbinding = gensym ( "globalsymbol_unbinding" );
	stream_before_change = gensym ( "before_change" );
	stream_before_clear = gensym ( "before_clear" );
	stream_after_change = gensym ( "after_change" );
	stream_after_clear = gensym ( "after_clear" );
	stream_empty = gensym ( "" );
	stream_classname = gensym ( "sadam.stream" );
	stream_notifyonchange = gensym ( "notifyonchange" );
	stream_size = gensym ( "internal_size" );
	stream_getname = gensym ( "internal_getname" );
	stream_addbyte = gensym ( "internal_addbyte" );
	stream_addarray = gensym ( "internal_addarray" );
	stream_getbyte = gensym ( "internal_getbyte" );
	stream_getarray = gensym ( "internal_getarray" );
	stream_insertbyte = gensym ( "internal_insertbyte" );
	stream_insertarray = gensym ( "internal_insertarray" );
	stream_erasebyte = gensym ( "internal_erasebyte" );
	stream_erasearray = gensym ( "internal_erasearray" );
	stream_replacebyte = gensym ( "internal_replacebyte" );
	stream_replacearray = gensym ( "internal_replacearray" );
	stream_clear = gensym ( "internal_clear" );
	
}

#endif // __cplusplus


#endif // __sadam_stream_H__

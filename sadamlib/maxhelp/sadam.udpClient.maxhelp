{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 5,
			"minor" : 1,
			"revision" : 9
		}
,
		"rect" : [ 25.0, 69.0, 579.0, 611.0 ],
		"bglocked" : 0,
		"defrect" : [ 25.0, 69.0, 579.0, 611.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Learn about multicasting!",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 225.0, 555.0, 145.0, 20.0 ],
					"id" : "obj-63",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Client B",
					"numoutlets" : 0,
					"fontname" : "Arial Bold Italic",
					"patching_rect" : [ 240.0, 375.0, 63.0, 23.0 ],
					"id" : "obj-62",
					"fontsize" : 14.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Client A",
					"numoutlets" : 0,
					"fontname" : "Arial Bold Italic",
					"patching_rect" : [ 30.0, 210.0, 63.0, 23.0 ],
					"id" : "obj-61",
					"fontsize" : 14.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p process",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 255.0, 465.0, 63.0, 20.0 ],
					"id" : "obj-56",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 25.0, 70.0, 238.0, 259.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 70.0, 238.0, 259.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "This patch has exactly the same logic as the process below Client A.",
									"linecount" : 3,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 75.0, 15.0, 154.0, 48.0 ],
									"id" : "obj-2",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf %s:%ld has sent:",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 45.0, 105.0, 139.0, 20.0 ],
									"id" : "obj-41",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl rot 3",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 15.0, 165.0, 47.0, 20.0 ],
									"id" : "obj-42",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl join",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 15.0, 135.0, 41.0, 20.0 ],
									"id" : "obj-43",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route 0",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 45.0, 75.0, 48.0, 20.0 ],
									"id" : "obj-51",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "list" ],
									"patching_rect" : [ 15.0, 15.0, 25.0, 25.0 ],
									"id" : "obj-52",
									"numinlets" : 0,
									"comment" : "(list) Received Bytes"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 45.0, 15.0, 25.0, 25.0 ],
									"id" : "obj-53",
									"numinlets" : 0,
									"comment" : "(int/list) Status Outlet"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 225.0, 25.0, 25.0 ],
									"id" : "obj-55",
									"numinlets" : 1,
									"comment" : "To [print]"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-51", 1 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [ 83.5, 100.0, 188.0, 100.0, 188.0, 189.0, 24.5, 189.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-43", 1 ],
									"hidden" : 0,
									"midpoints" : [ 54.5, 129.5, 46.5, 129.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print B",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 255.0, 495.0, 45.0, 20.0 ],
					"id" : "obj-40",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 54321",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 315.0, 345.0, 99.0, 20.0 ],
					"id" : "obj-38",
					"fontsize" : 12.0,
					"hidden" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 54321",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 105.0, 180.0, 99.0, 20.0 ],
					"id" : "obj-35",
					"fontsize" : 12.0,
					"hidden" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 12345",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 210.0, 180.0, 99.0, 20.0 ],
					"id" : "obj-34",
					"fontsize" : 12.0,
					"hidden" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "2nd Argument: dst_port",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 443.0, 435.0, 135.0, 20.0 ],
					"id" : "obj-27",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numoutlets" : 2,
					"minimum" : 0,
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Arial",
					"patching_rect" : [ 315.0, 375.0, 50.0, 20.0 ],
					"maximum" : 65535,
					"id" : "obj-29",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "src_port $1",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 315.0, 405.0, 71.0, 18.0 ],
					"id" : "obj-31",
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numoutlets" : 2,
					"minimum" : 0,
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Arial",
					"patching_rect" : [ 255.0, 405.0, 50.0, 20.0 ],
					"maximum" : 255,
					"id" : "obj-32",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sadam.udpClient localhost 12345",
					"numoutlets" : 2,
					"outlettype" : [ "list", "int" ],
					"fontname" : "Arial",
					"patching_rect" : [ 255.0, 435.0, 188.0, 20.0 ],
					"id" : "obj-33",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"saved_object_attributes" : 					{
						"group" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Glossary",
					"numoutlets" : 0,
					"fontname" : "Arial Bold Italic",
					"patching_rect" : [ 497.0, 170.0, 73.0, 23.0 ],
					"id" : "obj-26",
					"fontsize" : 14.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1st Argument: host",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 195.0, 270.0, 111.0, 20.0 ],
					"id" : "obj-22",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Host:",
					"numoutlets" : 0,
					"fontname" : "Arial Bold",
					"patching_rect" : [ 450.0, 195.0, 42.0, 20.0 ],
					"id" : "obj-17",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "the remote host to which the object is sending UDP packets.",
					"linecount" : 3,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 420.0, 210.0, 145.0, 48.0 ],
					"id" : "obj-16",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Destination Port:",
					"numoutlets" : 0,
					"fontname" : "Arial Bold",
					"patching_rect" : [ 405.0, 270.0, 108.0, 20.0 ],
					"id" : "obj-14",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "the remote port to which the object is sending UDP packets.",
					"linecount" : 3,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 420.0, 285.0, 143.0, 48.0 ],
					"id" : "obj-15",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Source Port:",
					"numoutlets" : 0,
					"fontname" : "Arial Bold",
					"patching_rect" : [ 405.0, 345.0, 84.0, 20.0 ],
					"id" : "obj-10",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "the local port on which the object is listening to incoming UDP packets.",
					"linecount" : 3,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 420.0, 360.0, 139.0, 48.0 ],
					"id" : "obj-5",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print A",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 45.0, 420.0, 45.0, 20.0 ],
					"id" : "obj-60",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf %s:%ld has sent:",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 60.0, 330.0, 139.0, 20.0 ],
					"id" : "obj-44",
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl rot 3",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 45.0, 390.0, 47.0, 20.0 ],
					"id" : "obj-37",
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl join",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 45.0, 360.0, 41.0, 20.0 ],
					"id" : "obj-36",
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route 0",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 60.0, 300.0, 48.0, 20.0 ],
					"id" : "obj-20",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numoutlets" : 2,
					"minimum" : 0,
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Arial",
					"patching_rect" : [ 105.0, 210.0, 50.0, 20.0 ],
					"maximum" : 65535,
					"id" : "obj-13",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numoutlets" : 2,
					"minimum" : 0,
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Arial",
					"patching_rect" : [ 180.0, 210.0, 50.0, 20.0 ],
					"maximum" : 65535,
					"id" : "obj-12",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "dst_port $1",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 105.0, 240.0, 71.0, 18.0 ],
					"id" : "obj-9",
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "src_port $1",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 180.0, 240.0, 71.0, 18.0 ],
					"id" : "obj-6",
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numoutlets" : 2,
					"minimum" : 0,
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Arial",
					"patching_rect" : [ 45.0, 240.0, 50.0, 20.0 ],
					"maximum" : 255,
					"id" : "obj-4",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"Broadcast & Multicast\"",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 225.0, 570.0, 145.0, 20.0 ],
					"id" : "obj-23",
					"fontsize" : 12.0,
					"numinlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 603.0, 335.0, 632.0, 345.0 ],
						"bglocked" : 0,
						"defrect" : [ 603.0, 335.0, 632.0, 345.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p Multicast",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 285.0, 120.0, 68.0, 20.0 ],
									"id" : "obj-34",
									"fontsize" : 12.0,
									"numinlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 5,
											"minor" : 1,
											"revision" : 9
										}
,
										"rect" : [ 92.0, 45.0, 554.0, 597.0 ],
										"bglocked" : 0,
										"defrect" : [ 92.0, 45.0, 554.0, 597.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "loadmess src_port 44444",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 105.0, 480.0, 145.0, 20.0 ],
													"id" : "obj-26",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "loadbang",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"fontname" : "Arial",
													"patching_rect" : [ 30.0, 360.0, 60.0, 20.0 ],
													"id" : "obj-23",
													"fontsize" : 12.0,
													"hidden" : 1,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Note that the message is arriving from the IP address of your computer instead of 'localhost' (which is 127.0.0.1). This proves that the message has travelled through your local router!",
													"linecount" : 3,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 195.0, 510.0, 349.0, 48.0 ],
													"id" : "obj-33",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Listen to both senders simultaneously.",
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 225.0, 450.0, 214.0, 20.0 ],
													"id" : "obj-32",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Listen only to the sender on the right.",
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 135.0, 420.0, 208.0, 20.0 ],
													"id" : "obj-31",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Listen only to the sender on the left.",
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 135.0, 390.0, 201.0, 20.0 ],
													"id" : "obj-30",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "group $1",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 30.0, 480.0, 58.0, 18.0 ],
													"id" : "obj-28",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "loadmess 1",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 105.0, 225.0, 72.0, 20.0 ],
													"id" : "obj-25",
													"fontsize" : 12.0,
													"hidden" : 1,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "These senders send messages on two different UDP multicast groups.",
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 84.5, 335.0, 385.0, 20.0 ],
													"id" : "obj-24",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Multicasting allows to set the loopback bit and Time-To-Live (TTL) of the messages. The former has different meaning on Mac/Unix and Windows -- on the Mac, the option applies to the send path, whereas on Windows, to the receive path. The latter defines the maximum number of routers a package may travel before being dropped. If this setting is too low, packages might not arrive to the destination (specially if they are far from each other); if it is too high, packages may flood the network.",
													"linecount" : 6,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 15.0, 135.0, 523.0, 89.0 ],
													"id" : "obj-22",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Multicast addresses are assigned to by IANA, however, the range 239.0.0.0-239.255.255.255 (also called 'Organization-Local Scope') may be freely used for custom multicast addresses. Of course, your network administrator or ISP may block outgoing messages from these groups.",
													"linecount" : 3,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 15.0, 75.0, 523.0, 48.0 ],
													"id" : "obj-19",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "To multicast a message on a subnetwork, you just need to send it to a proper multicast address. However, in order to receive the messages, the receiver needs to 'subscribe' to the messages arriving from that address. Note that multicast addresses are usually referred to as 'groups'.",
													"linecount" : 3,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 15.0, 15.0, 523.0, 48.0 ],
													"id" : "obj-21",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "\"239.255.0.55 239.255.55.0\"",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 60.0, 450.0, 162.0, 18.0 ],
													"id" : "obj-18",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "239.255.55.0",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 45.0, 420.0, 81.0, 18.0 ],
													"id" : "obj-16",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "toggle",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 345.0, 255.0, 20.0, 20.0 ],
													"id" : "obj-2",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "loopback $1",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 345.0, 285.0, 75.0, 18.0 ],
													"id" : "obj-4",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "ttl $1",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 435.0, 285.0, 37.0, 18.0 ],
													"id" : "obj-11",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"numoutlets" : 2,
													"minimum" : 0,
													"outlettype" : [ "int", "bang" ],
													"fontname" : "Arial",
													"patching_rect" : [ 435.0, 255.0, 40.0, 20.0 ],
													"maximum" : 255,
													"id" : "obj-12",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"numoutlets" : 2,
													"minimum" : 0,
													"outlettype" : [ "int", "bang" ],
													"fontname" : "Arial",
													"patching_rect" : [ 285.0, 255.0, 40.0, 20.0 ],
													"maximum" : 255,
													"id" : "obj-14",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sadam.udpClient 239.255.55.0 44444",
													"numoutlets" : 2,
													"outlettype" : [ "list", "int" ],
													"fontname" : "Arial",
													"patching_rect" : [ 285.0, 315.0, 211.0, 20.0 ],
													"id" : "obj-15",
													"fontsize" : 12.0,
													"numinlets" : 1,
													"saved_object_attributes" : 													{
														"group" : ""
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "239.255.0.55",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 30.0, 390.0, 81.0, 18.0 ],
													"id" : "obj-10",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "toggle",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 105.0, 255.0, 20.0, 20.0 ],
													"id" : "obj-5",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "loopback $1",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 105.0, 285.0, 75.0, 18.0 ],
													"id" : "obj-6",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "ttl $1",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 195.0, 285.0, 37.0, 18.0 ],
													"id" : "obj-3",
													"fontsize" : 12.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"numoutlets" : 2,
													"minimum" : 0,
													"outlettype" : [ "int", "bang" ],
													"fontname" : "Arial",
													"patching_rect" : [ 195.0, 255.0, 40.0, 20.0 ],
													"maximum" : 255,
													"id" : "obj-1",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"numoutlets" : 2,
													"minimum" : 0,
													"outlettype" : [ "int", "bang" ],
													"fontname" : "Arial",
													"patching_rect" : [ 45.0, 255.0, 40.0, 20.0 ],
													"maximum" : 255,
													"id" : "obj-13",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "print \"Error code\"",
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 270.0, 570.0, 102.0, 20.0 ],
													"id" : "obj-27",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "print \"Sender IP & port\"",
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 120.0, 570.0, 134.0, 20.0 ],
													"id" : "obj-20",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route 0",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 120.0, 540.0, 48.0, 20.0 ],
													"id" : "obj-17",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "print received",
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 30.0, 540.0, 83.0, 20.0 ],
													"id" : "obj-9",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sadam.udpClient",
													"numoutlets" : 2,
													"outlettype" : [ "list", "int" ],
													"fontname" : "Arial",
													"patching_rect" : [ 30.0, 510.0, 101.0, 20.0 ],
													"id" : "obj-8",
													"fontsize" : 12.0,
													"numinlets" : 1,
													"saved_object_attributes" : 													{
														"group" : "239.255.0.55"
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sadam.udpClient 239.255.0.55 44444",
													"numoutlets" : 2,
													"outlettype" : [ "list", "int" ],
													"fontname" : "Arial",
													"patching_rect" : [ 45.0, 315.0, 211.0, 20.0 ],
													"id" : "obj-7",
													"fontsize" : 12.0,
													"numinlets" : 1,
													"saved_object_attributes" : 													{
														"group" : ""
													}

												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 1,
													"midpoints" : [ 114.5, 249.5, 354.5, 249.5 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 1,
													"midpoints" : [ 114.5, 249.5, 444.5, 249.5 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 1,
													"midpoints" : [ 114.5, 249.5, 204.5, 249.5 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [ 69.5, 473.5, 39.5, 473.5 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 1 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [ 158.5, 564.5, 279.5, 564.5 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [ 54.5, 458.5, 39.5, 458.5 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [ 204.5, 308.5, 54.5, 308.5 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [ 114.5, 308.5, 54.5, 308.5 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [ 444.5, 308.5, 294.5, 308.5 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [ 354.5, 308.5, 294.5, 308.5 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [ 114.5, 504.5, 39.5, 504.5 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 1 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [ 121.5, 534.5, 129.5, 534.5 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Arial",
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p Broadcast",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 285.0, 255.0, 75.0, 20.0 ],
									"id" : "obj-33",
									"fontsize" : 12.0,
									"numinlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 5,
											"minor" : 1,
											"revision" : 9
										}
,
										"rect" : [ 92.0, 45.0, 533.0, 335.0 ],
										"bglocked" : 0,
										"defrect" : [ 92.0, 45.0, 533.0, 335.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "loadmess src_port 55555",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 15.0, 210.0, 145.0, 20.0 ],
													"id" : "obj-6",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Note that the message is arriving from the IP address of your computer instead of 'localhost' (which is 127.0.0.1). This proves that the message has travelled through your local router!",
													"linecount" : 3,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 180.0, 240.0, 348.0, 48.0 ],
													"id" : "obj-10",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "With this example, you can send integers on port 55555 to all of the machines on your local network.",
													"linecount" : 2,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 150.0, 143.5, 282.0, 34.0 ],
													"id" : "obj-5",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "There are several broadcast addresses, depending on your destination subnetwork - your local network, the network of the venue hosting your local netowrk, the ISP of the venue, the whole Internet etc. However, for security and performance reasons, [sadam.udpClient] will only send broadcast messages to the local network. The broadcast address of any local network is, by definition, 255.255.255.255",
													"linecount" : 5,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 15.0, 45.0, 501.0, 75.0 ],
													"id" : "obj-3",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "To broadcast a message on a subnetwork, you just need to send it to a broadcast address.",
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 15.0, 15.0, 495.0, 20.0 ],
													"id" : "obj-2",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"numoutlets" : 2,
													"minimum" : 0,
													"outlettype" : [ "int", "bang" ],
													"fontname" : "Arial",
													"patching_rect" : [ 90.0, 150.0, 40.0, 20.0 ],
													"maximum" : 255,
													"id" : "obj-13",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "print \"Error code\"",
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 255.0, 300.0, 102.0, 20.0 ],
													"id" : "obj-27",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "print \"Sender IP & port\"",
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 105.0, 300.0, 134.0, 20.0 ],
													"id" : "obj-20",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route 0",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 105.0, 270.0, 48.0, 20.0 ],
													"id" : "obj-17",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "print received",
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 15.0, 270.0, 83.0, 20.0 ],
													"id" : "obj-9",
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sadam.udpClient",
													"numoutlets" : 2,
													"outlettype" : [ "list", "int" ],
													"fontname" : "Arial",
													"patching_rect" : [ 15.0, 240.0, 101.0, 20.0 ],
													"id" : "obj-8",
													"fontsize" : 12.0,
													"numinlets" : 1,
													"saved_object_attributes" : 													{
														"group" : ""
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sadam.udpClient 255.255.255.255 55555",
													"numoutlets" : 2,
													"outlettype" : [ "list", "int" ],
													"fontname" : "Arial",
													"patching_rect" : [ 90.0, 180.0, 231.0, 20.0 ],
													"id" : "obj-7",
													"fontsize" : 12.0,
													"numinlets" : 1,
													"saved_object_attributes" : 													{
														"group" : ""
													}

												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 1 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [ 106.5, 264.5, 114.5, 264.5 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 1 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [ 143.5, 294.5, 264.5, 294.5 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Arial",
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- Basically, none; unless you're forced to use broadcast, go multicast instead.",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 75.0, 305.0, 419.0, 20.0 ],
									"id" : "obj-32",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- Easier to understand and use the concept than multicast.",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 75.0, 285.0, 321.0, 20.0 ],
									"id" : "obj-31",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- Broadcast is an obsolete technology which will disappear sooner or later.",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 75.0, 210.0, 404.0, 20.0 ],
									"id" : "obj-30",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Advantages of broadcast over multicast:",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 60.0, 255.0, 224.0, 20.0 ],
									"id" : "obj-29",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- Many system administrators block broadcast. This is less likely to happen with multicast.",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 75.0, 190.0, 486.0, 20.0 ],
									"id" : "obj-28",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- Multicast allows an intelligent set-up of the network topology.",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 75.0, 170.0, 339.0, 20.0 ],
									"id" : "obj-26",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- Multicast is supported by both IPv4 and IPv6.",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 75.0, 150.0, 258.0, 20.0 ],
									"id" : "obj-25",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Advantages of multicast over broadcast:",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 60.0, 120.0, 224.0, 20.0 ],
									"id" : "obj-23",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "UDP multicast and broadcast are examples of routing schemes on computer networks where a single message from the source is routed to several destinations simultaneously. Broadcast, an obsolete technology which only works on IPv4 will transmit all messages to all devices on a given subnetwork; with multicast, it is possible to define 'multicast groups' -- instead of flooding all devices, multicast messages sent to a specific group are delivered only to those devices which are subscribed to that group.",
									"linecount" : 5,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 15.0, 15.0, 615.0, 75.0 ],
									"id" : "obj-18",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This object is stream-aware!",
					"linecount" : 2,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 30.0, 555.0, 87.0, 34.0 ],
					"id" : "obj-11",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p streams",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 115.0, 563.0, 63.0, 20.0 ],
					"id" : "obj-54",
					"fontsize" : 12.0,
					"numinlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 604.0, 69.0, 550.0, 624.0 ],
						"bglocked" : 0,
						"defrect" : [ 604.0, 69.0, 550.0, 624.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print \"Listener Stream\"",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 405.0, 420.0, 130.0, 20.0 ],
									"id" : "obj-45",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print \"Sender Stream\"",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 405.0, 105.0, 126.0, 20.0 ],
									"id" : "obj-44",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Print the received binary data.",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 90.0, 482.0, 170.0, 20.0 ],
									"id" : "obj-43",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Listen on the latter stream with an LZO decompressor and decompress whatever arrives on that stream.",
									"linecount" : 4,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 45.0, 555.0, 158.0, 62.0 ],
									"id" : "obj-41",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "4.",
									"numoutlets" : 0,
									"fontname" : "Arial Bold",
									"patching_rect" : [ 390.0, 540.0, 41.0, 48.0 ],
									"id" : "obj-38",
									"fontsize" : 36.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "3.",
									"numoutlets" : 0,
									"fontname" : "Arial Bold",
									"patching_rect" : [ 15.0, 420.0, 41.0, 48.0 ],
									"id" : "obj-37",
									"fontsize" : 36.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "2.",
									"numoutlets" : 0,
									"fontname" : "Arial Bold",
									"patching_rect" : [ 405.0, 270.0, 41.0, 48.0 ],
									"id" : "obj-36",
									"fontsize" : 36.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1.",
									"numoutlets" : 0,
									"fontname" : "Arial Bold",
									"patching_rect" : [ 15.0, 165.0, 44.0, 48.0 ],
									"id" : "obj-35",
									"fontsize" : 36.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "This is another stream.",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 405.0, 375.0, 133.0, 20.0 ],
									"id" : "obj-29",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "This is a stream.",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 405.0, 60.0, 99.0, 20.0 ],
									"id" : "obj-26",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Receive UDP data from the network and forward any incoming messages to another stream.",
									"linecount" : 5,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 255.0, 375.0, 128.0, 75.0 ],
									"id" : "obj-23",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Listen on that same stream with a UDP Client and send whatever arrives on that stream to the network.",
									"linecount" : 4,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 45.0, 255.0, 160.0, 62.0 ],
									"id" : "obj-19",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Create some data and send it to a stream.",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 225.0, 165.0, 133.0, 34.0 ],
									"id" : "obj-18",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b l",
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 60.0, 150.0, 32.5, 20.0 ],
									"id" : "obj-16",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess bind_listener listener",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 75.0, 405.0, 175.0, 20.0 ],
									"id" : "obj-14",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess bind_sender sender",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 210.0, 255.0, 171.0, 20.0 ],
									"id" : "obj-12",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print \"Decompressed Data\"",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 210.0, 585.0, 155.0, 20.0 ],
									"id" : "obj-11",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sadam.lzo decompress listener",
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 210.0, 555.0, 176.0, 20.0 ],
									"id" : "obj-9",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sadam.udpClient localhost 32323",
									"numoutlets" : 2,
									"outlettype" : [ "list", "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 210.0, 285.0, 188.0, 20.0 ],
									"id" : "obj-21",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"saved_object_attributes" : 									{
										"group" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "\"But this rough magic I here abjure, and, when I have required some heavenly music, which even now I do, to work mine end upon their senses that this airy charm is for, I'll break my staff, bury it certain fathoms in the earth, and deeper than did ever plummet sound I'll drown my book.\"",
									"linecount" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 60.0, 60.0, 279.0, 87.0 ],
									"id" : "obj-15",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sadam.lzo compress sender",
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"fontname" : "Arial",
									"patching_rect" : [ 60.0, 180.0, 161.0, 20.0 ],
									"id" : "obj-3",
									"fontsize" : 12.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "You can send/receive arbitrary data using binary streams provided by [sadam.stream].",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 15.0, 15.0, 468.0, 20.0 ],
									"id" : "obj-25",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess src_port 32323",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 60.0, 375.0, 145.0, 20.0 ],
									"id" : "obj-2",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sadam.stream listener",
									"numoutlets" : 3,
									"outlettype" : [ "list", "bang", "list" ],
									"fontname" : "Arial",
									"patching_rect" : [ 405.0, 390.0, 129.0, 20.0 ],
									"id" : "obj-28",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sadam.stream sender",
									"numoutlets" : 3,
									"outlettype" : [ "list", "bang", "list" ],
									"fontname" : "Arial",
									"patching_rect" : [ 405.0, 75.0, 127.0, 20.0 ],
									"id" : "obj-27",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print \"Listener Status\"",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 180.0, 465.0, 126.0, 20.0 ],
									"id" : "obj-6",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print \"Listener Data\"",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 60.0, 465.0, 117.0, 20.0 ],
									"id" : "obj-5",
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sadam.udpClient localhost",
									"numoutlets" : 2,
									"outlettype" : [ "list", "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 60.0, 435.0, 151.0, 20.0 ],
									"id" : "obj-1",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"saved_object_attributes" : 									{
										"group" : ""
									}

								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [ 201.5, 459.5, 189.5, 459.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 84.5, 429.5, 69.5, 429.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 1 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [ 83.0, 174.5, 211.5, 174.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 2 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [ 522.5, 99.5, 414.5, 99.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 2 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [ 524.5, 414.5, 414.5, 414.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "autohelp",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 405.0, 540.0, 57.0, 20.0 ],
					"id" : "obj-45",
					"fontsize" : 12.0,
					"hidden" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sadam.udpClient localhost",
					"numoutlets" : 2,
					"outlettype" : [ "list", "int" ],
					"fontname" : "Arial",
					"patching_rect" : [ 45.0, 270.0, 151.0, 20.0 ],
					"id" : "obj-1",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"saved_object_attributes" : 					{
						"group" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_title",
					"text" : "sadam.udpClient",
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 10.0, 8.0, 485.0, 30.0 ],
					"id" : "obj-46",
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ],
					"fontface" : 3,
					"fontsize" : 20.871338,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_digest",
					"text" : "UDP Sender/Receiver object with fixed source port",
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 10.0, 36.0, 485.0, 21.0 ],
					"id" : "obj-47",
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ],
					"fontsize" : 12.754705,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_description",
					"text" : "sadam.udpClient will listen to a specified port and output incoming packets as pure binary data as well as send binary data to any IP address. Both the incoming and outgoing data may be managed either by direct interaction with this object through its outlets or by registering it to binary streams represented by sadam.stream. Bytes are represented as numbers between 0 and 255 (0x00 and 0xFF, respectively).\nNote that, despite the object's name, there is no such thing as a 'UDP Client', as UDP itself is a connectionless protocol. The name simply reflects that the object's functionality is very similar to sadam.tcpClient.",
					"linecount" : 8,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 10.0, 57.0, 497.0, 113.0 ],
					"id" : "obj-48",
					"fontsize" : 11.595187,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "autohelp_top_ref",
					"bgovercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"presentation_rect" : [ 0.0, 0.0, 205.747757, 14.666666 ],
					"numoutlets" : 3,
					"bgoveroncolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : "open sadam.udpClient reference",
					"outlettype" : [ "", "", "int" ],
					"fontname" : "Arial",
					"spacing_x" : 0.0,
					"patching_rect" : [ 294.252258, 22.0, 205.747757, 14.666666 ],
					"bgoncolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"id" : "obj-49",
					"spacing_y" : 0.0,
					"underline" : 1,
					"textoncolor" : [ 0.27, 0.35, 0.47, 1.0 ],
					"textcolor" : [ 0.309, 0.395, 0.524, 1.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 3,
					"fontlink" : 1,
					"fontsize" : 12.754705,
					"textovercolor" : [ 0.4, 0.5, 0.65, 1.0 ],
					"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "autohelp_top_panel",
					"grad1" : [ 0.27, 0.35, 0.47, 1.0 ],
					"mode" : 1,
					"numoutlets" : 0,
					"grad2" : [ 0.85, 0.85, 0.85, 1.0 ],
					"patching_rect" : [ 5.0, 5.0, 495.0, 52.0 ],
					"background" : 1,
					"id" : "obj-50",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"border" : 3,
					"patching_rect" : [ 400.0, 190.0, 170.0, 225.0 ],
					"id" : "obj-24",
					"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_see_title",
					"text" : "See Also:",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 410.0, 544.0, 100.0, 20.0 ],
					"id" : "obj-2",
					"fontface" : 1,
					"fontsize" : 11.595187,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "autohelp_see_menu",
					"items" : [ "(Objects:)", ",", "sadam.stream", ",", "sadam.tcpclient", ",", "sadam.tcpreceiver", ",", "sadam.tcpsender", ",", "sadam.tcpserver", ",", "sadam.udpreceiver", ",", "sadam.udpsender", ",", "<separator>" ],
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 410.0, 564.0, 130.0, 20.0 ],
					"types" : [  ],
					"id" : "obj-3",
					"fontsize" : 11.595187,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "autohelp_see_panel",
					"numoutlets" : 0,
					"border" : 2,
					"patching_rect" : [ 405.0, 540.0, 140.0, 50.0 ],
					"background" : 1,
					"id" : "obj-7",
					"bordercolor" : [ 0.5, 0.5, 0.5, 0.75 ],
					"bgcolor" : [ 0.85, 0.85, 0.85, 0.75 ],
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 1 ],
					"destination" : [ "obj-56", 1 ],
					"hidden" : 0,
					"midpoints" : [ 433.5, 459.5, 308.5, 459.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [ 219.5, 204.5, 189.5, 204.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [ 324.5, 428.5, 264.5, 428.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-36", 1 ],
					"hidden" : 0,
					"midpoints" : [ 69.5, 354.5, 76.5, 354.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 189.5, 263.5, 54.5, 263.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 114.5, 263.5, 54.5, 263.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 186.5, 294.5, 69.5, 294.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 1 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 0,
					"midpoints" : [ 98.5, 325.0, 203.0, 325.0, 203.0, 415.0, 54.5, 415.0 ]
				}

			}
 ]
	}

}

{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 67.0, 63.0, 508.0, 413.0 ],
		"bglocked" : 0,
		"defrect" : [ 67.0, 63.0, 508.0, 413.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 11.595187,
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
					"text" : "You'll notice the difference after setting the frequency to 0 a couple of times.",
					"linecount" : 3,
					"patching_rect" : [ 165.0, 330.0, 150.0, 46.0 ],
					"id" : "obj-23",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Frequency (Hz)",
					"patching_rect" : [ 198.0, 180.0, 90.0, 20.0 ],
					"id" : "obj-19",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "scope~",
					"range" : [ 0.0, 1.0 ],
					"patching_rect" : [ 240.0, 240.0, 174.0, 74.0 ],
					"triglevel" : 0.5,
					"id" : "obj-15",
					"numinlets" : 2,
					"bufsize" : 64,
					"numoutlets" : 0,
					"calccount" : 128
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "scope~",
					"range" : [ 0.0, 1.0 ],
					"patching_rect" : [ 60.0, 240.0, 174.0, 74.0 ],
					"triglevel" : 0.5,
					"id" : "obj-14",
					"numinlets" : 2,
					"bufsize" : 64,
					"numoutlets" : 0,
					"calccount" : 128
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 150.0, 180.0, 50.0, 20.0 ],
					"id" : "obj-13",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sadam.phasor~",
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 240.0, 210.0, 91.0, 20.0 ],
					"id" : "obj-4",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "phasor~",
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 60.0, 210.0, 53.0, 20.0 ],
					"id" : "obj-1",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "autohelp",
					"hidden" : 1,
					"patching_rect" : [ 330.0, 345.0, 55.0, 20.0 ],
					"id" : "obj-2",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"varname" : "autohelp_dac",
					"patching_rect" : [ 75.0, 350.0, 45.0, 45.0 ],
					"id" : "obj-3",
					"local" : 1,
					"numinlets" : 2,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_dac_text",
					"text" : "start audio",
					"linecount" : 2,
					"patching_rect" : [ 34.0, 356.0, 38.0, 33.0 ],
					"id" : "obj-5",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "startwinwdow_panel",
					"bordercolor" : [ 0.392157, 0.792157, 0.117647, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 27.0, 345.0, 100.0, 55.0 ],
					"id" : "obj-6",
					"border" : 2,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Compare [phasor~] and [sadam.phasor~]",
					"patching_rect" : [ 105.0, 145.0, 223.0, 20.0 ],
					"id" : "obj-22",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_title",
					"text" : "sadam.phasor~",
					"patching_rect" : [ 10.0, 8.0, 485.0, 30.0 ],
					"frgb" : [ 0.2, 0.2, 0.2, 1.0 ],
					"id" : "obj-8",
					"fontname" : "Arial",
					"textcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontface" : 3,
					"fontsize" : 20.871338
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_digest",
					"text" : "Phasor object with maximal resting state.",
					"patching_rect" : [ 10.0, 36.0, 485.0, 21.0 ],
					"frgb" : [ 0.2, 0.2, 0.2, 1.0 ],
					"id" : "obj-9",
					"fontname" : "Arial",
					"textcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 12.754705
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_description",
					"text" : "sadam.phasor~ will generate a ramp between 0 and 1 with the given frequency. The only difference between this object and the legacy phasor~ object is that if frequency is set to 0, the ramp will continue until it reaches 1. This can be useful in scenarios when the phasor is controlling a modulation and for 0 frequency we'd like to turn off the modulation completely, including DC effects.",
					"linecount" : 5,
					"patching_rect" : [ 10.0, 57.0, 442.0, 73.0 ],
					"id" : "obj-10",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "autohelp_top_ref",
					"outlettype" : [ "", "", "int" ],
					"presentation_rect" : [ 0.0, 0.0, 196.916367, 14.666666 ],
					"fontlink" : 1,
					"textovercolor" : [ 0.4, 0.5, 0.65, 1.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgovercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"patching_rect" : [ 303.083618, 22.0, 196.916367, 14.666666 ],
					"id" : "obj-11",
					"bgoveroncolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontname" : "Arial",
					"underline" : 1,
					"textcolor" : [ 0.348, 0.44, 0.578, 1.0 ],
					"numinlets" : 1,
					"spacing_x" : 0.0,
					"bgoncolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : "open sadam.phasor~ reference",
					"numoutlets" : 3,
					"spacing_y" : 0.0,
					"fontface" : 3,
					"textoncolor" : [ 0.27, 0.35, 0.47, 1.0 ],
					"fontsize" : 12.754705
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_see_title",
					"text" : "See Also:",
					"patching_rect" : [ 335.0, 349.0, 100.0, 20.0 ],
					"id" : "obj-16",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontface" : 1,
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "autohelp_see_menu",
					"outlettype" : [ "int", "", "" ],
					"items" : [ "(Objects:)", ",", "cycle~", ",", "phasor~", ",", "<separator>" ],
					"types" : [  ],
					"patching_rect" : [ 335.0, 369.0, 130.0, 20.0 ],
					"id" : "obj-18",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "autohelp_top_panel",
					"grad1" : [ 0.88, 0.98, 0.78, 1.0 ],
					"patching_rect" : [ 5.0, 5.0, 495.0, 52.0 ],
					"id" : "obj-12",
					"mode" : 1,
					"grad2" : [ 0.9, 0.9, 0.9, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"background" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "autohelp_see_panel",
					"bordercolor" : [ 0.5, 0.5, 0.5, 0.75 ],
					"bgcolor" : [ 0.85, 0.85, 0.85, 0.75 ],
					"patching_rect" : [ 330.0, 345.0, 140.0, 50.0 ],
					"id" : "obj-20",
					"border" : 2,
					"numinlets" : 1,
					"numoutlets" : 0,
					"background" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 159.5, 204.5, 249.5, 204.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 159.5, 204.5, 69.5, 204.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}

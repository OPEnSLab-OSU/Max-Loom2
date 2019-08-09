inlets = 1
// 0: Commands

outlets = 0

// Path to patch files
path = this.patcher.filepath

// Add to this array to add to menu
availablePatches = [
	"ModuleCore", 
	"GeneralViewer", 
	"Sensor", 
	"PositionVisualizer", 
	"Neopixel",
	"Relay",
	"Servo",
	"Stepper",
	"Aux_RangeSetter",
	"Aux_ScaleCurve",
	"Aux_ScaleLinear",
	"Aux_Smooth",
	"Aux_Threshold"
]

// Run immediately
var menu = this.patcher.getnamed("patch_select_menu");
menu.clear()
availablePatches.forEach( function (val) { menu.append(val) } )


var patches = []


// Create a patch
function generate(patchName)
{
	post("Generating: ", patchName, "\n");

	offset = 0; //use this offset if bpatchers to spawn in same place
	var tmp = 	this.patcher.parentpatcher.newdefault(offset,0,
			"bpatcher",
			"@varname", 
			"obj["+patches.length+"]",
			"@name", patchName+".maxpat",
			"@border", "0",
			"@clickthrough", "1",
			"@orderfront", "1",
			"@embed", "1"
	//		"@presentation", "1"
		)
		
	patches.push(tmp)
		
	// Adjust border to fit patch size
	var dimensions = this.patcher.parentpatcher
						.getnamed("obj["+(patches.length-1)+"]")
						.subpatcher()
						.getnamed("background").rect					
	dimensions[0] = 300
	dimensions[1] = 25
	dimensions[2] += 300
	dimensions[3] += 25

	tmp.rect = dimensions
}

// Delete last patch generated
function delete_last()
{
	this.patcher.parentpatcher.remove( patches.pop() )
}

// Delete all patches 
function delete_all()
{
	var parent = this.patcher.parentpatcher
	patches.forEach( function (patch) { parent.remove(patch) } )
	patches.length = 0
}
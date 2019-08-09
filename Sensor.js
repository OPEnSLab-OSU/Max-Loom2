inlets = 1;
// 0: Incoming commands

outlets = 0;

var data = {};

// Upon new data
function json(j)
{
	data = JSON.parse(j); // js object
	
	update_UI_module_menu();
	update_UI_parameter_menu();
	update_UI_parameter_value();
}


function update_UI_module_menu()
{
	// Get module menu element
	var module_menu = this.patcher.getnamed("module_selection");
	
	// Get current selection
	module_menu.message("pattrmode", 1);
	var prev = module_menu.getvalueof();
	module_menu.clear();
	
	// Update menu with modules
	Object.keys(data)
		.filter( function (val) { return val != "ID" } )			// Remove ID key
		.forEach( function (key) { module_menu.append( key ) } );	// Add to menu

	module_menu.set(prev);
}

function update_UI_parameter_menu()
{
	// Get module menu element
	var param_menu = this.patcher.getnamed("parameter_selection");
	var module_menu = this.patcher.getnamed("module_selection");

	// Get current selection
	param_menu.message("pattrmode", 1);
	module_menu.message("pattrmode", 1);
	var curr_module = module_menu.getvalueof();
	var prev = param_menu.getvalueof();
	param_menu.clear();
	
	// Update menu with module's data
	Object.keys( data[curr_module] )
		.forEach( function (key) { param_menu.append( key ) } );	// Add to menu
	

	param_menu.set(prev);
	var param_view =  this.patcher.getnamed("param_view");

	var val = data[module_menu.getvalueof()][param_menu.getvalueof()];
	
	param_view.set(val);
	param_view.message("bang");
}


//var last_param = "";
function update_UI_parameter_value()
{
	var param_view = this.patcher.getnamed("param_view");
	var param_menu = this.patcher.getnamed("parameter_selection");
	var module_menu = this.patcher.getnamed("module_selection");
	
	var scroller = this.patcher.getnamed("scroller");
	var val = data[module_menu.getvalueof()][param_menu.getvalueof()];
	
	param_view.set(val);
	param_view.message("bang");
}

function reset_to_default()
{
	
}







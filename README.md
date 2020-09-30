# Max Documentation

## Purpose

* Designed to interface with the Loom Internet of Things Rapid Prototyping framework ([GitHub - OPEnSLab-OSU/Loom: Arduino library for Internet of Things Rapid Prototyping in environmental sensing](https://github.com/OPEnSLab-OSU/Loom))
* Uses software Max: [What is Max? | Cycling ’74](https://cycling74.com/products/max)
	* Tool for creating interactive software

### This Readme
* Designed to cover the usage of Max for interfacing with Loom, as well as some details of how it is implemented
	* It is not designed to be a readme of how to modify / create new patches or functionality

### Where to Put these Files
* Place this folder into the following directory:
  * If using Max 7 or 8:
    * [user] / Documents / Max 7 / Library
  * If using Max 6:
    * [user] / Applications / Max6 / Cycling74 

*Note: most of these the Max Loom files are developed in Max 8, functionality outside of this version may vary*

### Developer notes:
* These files should be in the same folder
* Some functionality (e.g. UDP communication) will only work on Max 8
* The Z_ patches may not work or depend on non-default features in Max 8



- - - -



# Patches

* Patches are self-contained blocks with inputs and outputs for commands / data
* Inlets are the little circles at the top of a patch, hovering over them will give a description
* Outlets are the little circles at the bottom of a patch, hovering over them will give a description

## General

#### ModuleCore (primary input from Loom device)
##### Description

* Can think of as a representation a Loom device (device running Loom software, and enabled with Max interfacing features)
* A number of the patches are intended to be parallels to individual features / components enabled in the config of the Loom device

##### UI Elements

* `Instance number`: Enter the device number to connect to (specified in the config file)
* `Data updating`: When data is being received, this indicator blinks when data is being received (updates at 500ms interval if data is being received faster than that)
* `Battery indicator`: Display the battery level of the connected Loom device
* `Device name`: The name of the Loom device as specified in the config file
* `Send IP button`: Press to send the IP of the computer running Max to the Loom device. The device will save this and send data to specifically that IP rather than broadcasting data (increases data reliability)

##### Inlets

1. `Device ID In`: change the device to connect to
2. `JS Commands In`: Commands from actuator patches to converted to format and send to the Loom device
3. `Bang to Send IP`: Input bang signal to send IP to Loom device

##### Outlets

1. `Json Out`: Received data in Json format
2. `Data Dictionary Out`: Received data in Max dictionary format



- - - -



## Displays

### GeneralViewer
##### Description

* Accepts data as either a Json object or a Max Dictionary and displays is for easier viewing

##### UI Elements

* Large area to display data
* ‘Freeze’ button to prevent new data from overwriting currently displayed data

##### Inlets

1. `Data (Json) In`: Data in Json format (works with non-Loom data)
2. `Data (Dict) In`: Data in Max dictionary format (works with non-Loom data)

##### Outlets

1. None

### Sensor
##### Description

* Displays data from Loom devices 
* Intended to be connected to ’Json Out’ outlet of a ‘ModuleCore’

##### UI Elements

* Drop down of which sensor to display data for (items correspond to Loom Modules)
* Drop down of which element to display for the selected sensor / module
* Last reported value
* Moving average histogram of recent values

##### Inlets

1. `Data (Json) In`

##### Outlets

1. Outgoing data of current parameter 

##### Notes

* Data parsing and UI updating is primarily done via Sensor.js script

### PositionVisualizer
##### Description

* Displays the 3D orientation of Loom device with MPU6050
* Intended to be connected to ’Json Out’ or ‘Data Dictionary Out’ outlet of a ‘ModuleCore’

##### UI Elements

* Orientation visualization

##### Inlets

1. `Data (Json) In`: Loom data from ModuleCore
2. `Data (Dict) In`: Loom data from ModuleCore

##### Outlets

1. Output



- - - -



## Outputs (to network)

### Neopixel
##### Description

* Set the color of a Neopixel connected to a Loom device (generally connected to an Ishield)
* Corresponds to Loom ‘Neopixel’ module

##### UI Elements

* ‘Send’ button: generate command
* Dropdown menu to select which port the Neopixel / Neopixel chain is connected to 
* Dropdown menu to select which Neopixel to set in an a chain
* Sliders to select red, green, and blue values (0-255)

##### Inlets

1. `Bang to Send`: generate command upon bang 
2. `Reset to Defaults`
3. `Port Number`
4. `Neopixel # In Chain`
5. `Red Value (0-255)`
6. `Green Value (0-255)`
7. `Blue Value (0-255)`

##### Outlets

1. `JS Command Out`: Intended to be connected ‘JS Commands In’ outlet of ‘ModuleCore’

### Relay
##### Description

* Set the state of a relay connected to a Loom device
* Corresponds to Loom `Relay` module

##### UI Elements

* ‘Send’ button: generate command
* Button toggle to set relay state (green: enabled, gray: off)
* ‘Auto Send’ toggle: (enabled: changing main toggle immediately generates command: disabled: commands only generated when ‘Send’ button is pressed

##### Inlets

1. `Bang to Send`: generate command upon bang 
2. `Set State (1 on, 0 off)`

##### Outlets

1. `JS Command Out`: Intended to be connected ‘JS Commands In’ outlet of ‘ModuleCore’

### Servo
##### Description

* Set the position of a servo connected to a Loom device
* Corresponds to Loom ‘Servo’ module

##### UI Elements

* ‘Send’ button: generate command
* Dropdown to select which servo to set

##### Inlets

1. `Bang to Send`: generate command upon bang 
2. `Reset to Defaults`
3. `Servo Number` 
4. `Degree`

##### Outlets

1. `JS Command Out`: Intended to be connected ‘JS Commands In’ outlet of ‘ModuleCore’

### Stepper
##### Description

* Control rotation of stepper connect to Loom device
* Corresponds to Loom ‘Servo’ module

##### UI Elements

* ‘Send’ button: generate command
* Dropdown to select which motor to control
* Number of steps to move input 
* Speed entry: 10-250

##### Inlets

1. `Bang to Send`: generate command upon bang 
2. `Reset to Defaults` 
3. `Motor #`
4. `Set Speed`
5. `Clockwise`

##### Outlets

1. `JS Command Out`: Intended to be connected ‘JS Commands In’ outlet of ‘ModuleCore’

### SetInterval
##### Description

* Set the refresh rate of a Loom device

##### UI Elements

* ‘Send’ button: generate command

##### Inlets

1. `Bang to Send`: generate command upon bang 
2. `Interval (ms)`: refresh rate of Loom devices

##### Outlets

1. `JS Command Out`: Intended to be connected ‘JS Commands In’ outlet of ‘ModuleCore’

#### SelectSD_Config
##### Description

* Specify a config file for a Loom device to reinitialize with
* Requires that the Loom device be connected to an SD card

##### UI Elements

* Dropdown to select Loom config file (names populated from items in ‘SD_Json_Menu.txt’
  * Populate .txt file with common config names
* Text box to manually enter Loom config file name

##### Inlets

1. `Bang to Send`: generate command upon bang 
2. `Reset to Defaults`

##### Outlets

1. `JS Command Out`: Intended to be connected ‘JS Commands In’ outlet of ‘ModuleCore’

- - - -

## Middleware Patches 
*Used for transforming values / data streams*

### Aux_RangeSetter
##### Description
  * Scales an input stream of values to fit within the specified ‘Min’ and ‘Max’ values
  * Intended that the ‘Learn’ toggle be active while adjusting the input (output from a Loom device or otherwise) between its maximum ranges, then deactivating ‘Learn’
    * Subsequent values will use the detected min and max values of the input and map them to the output min and max values, with other values being interpolated within the range
    * Incoming values outside of the learned min and max while ‘Learn’ is disabled will be capped within the range
  * Rescales an incoming data stream of an unknown range into a stream with a specified minimum and maximum range. Range Setter automatically adjusts and compares incoming values based on the least and greatest values it received while in "Learn" mode. 

##### UI Elements
  * Output ‘Min’ and ‘Max’ range
* ‘Learn’ toggle: enable and send your min and max value. Then disable to save min/max and disable Learn mode.
* Mapped value of most recent input value
* History of values
* Reset button: Clear learned ranged
##### Inlets
1. `Incoming Values`: stream of values to remap
2. `Save/reset`: 1: reset learned values and enable learn mode, 0: disable learn mode, saving learned range
##### Outlets
1. `Range adjusted value`: stream of values remapped to specified range

### Aux_ScaleCurve
##### Description
  * Remap a [0, 1] data stream through a selection of functions
  * Data not in [0, 1] can be remapped to this range with ‘Rescale’ or ‘Range Setter’ patches
  * Transformation equations:
    * x is in range [0, 1] 
    * Cosine: (x–1^3) * (x+1^3) + 1
    * CrossFadeIn: sin(x * π/2)
    * Exponential: x^a
    * Linear: Simply caps input stream to [0,1) range
    * Bell: sin(x * π)
    * Gaussian: e^[–(x–0.5^2) / (2*(0.157^2)]
    * InvGauss: -e^[–(x–0.5^2) / (2*(0.157^2)] + 1
    * Inverted Ramp: cos(x * π) 
##### UI Elements
  * Dropdown to select which function to map input stream to
  * Exponent: Only applies if ‘exponential’ function is selected
  * Visualization of function and current input and output values along the curve
  * Histogram of recent values
##### Inlets
  1. `Value to Scale`: Stream of data (or single value), representing ‘x’ values to specified functions (should be in [0,1])
##### Outlets
  1. `Scaled Value`: Stream of data mapped through the specified equation

### Aux_ScaleLinear
##### Description
  * Maps a stream of data from the specified input range to the specified output range, interpolating to scale values
  * Similar to ‘Range Setter’ patch but expects know input range
##### UI Elements
  * Input Min and Max values
  * Output Min and Max values
##### Inlets
  1. `Value to Scale`: Input stream of data (or single value) to scale to a different range
##### Outlets
  1. `Scaled Value`: Stream of data remapped to specified range

### Aux_Smooth
##### Description
  * Smooths data stream logarithmically
  * Uses an averaging function to affect rising and falling in a data stream. This can have a smoothing affect on the data stream,
  * Slider values indicate how many samples to average together
  * Also note, The Smooth value is inversely correlational to the data's responsiveness. i.e. the higher the Smoothing value, the more sluggish the data will be to respond in a rising or falling direction
##### UI Elements
  * Filter strength rising: [0,21], strength of smoothing on rising data
  * Filter strength falling: [0,21], strength of smoothing on falling data
  * Histogram of recent values:
  * Most recent value
##### Inlets
  1. `Value to Smooth`: Stream of data to smooth
##### Outlets
  1. `Smoothed Value`: Stream of data smoothed 

### Aux_Threshold
##### Description
  * Output boolean values triggered when a stream of data values risings or falls past specified thresholds
##### UI Elements
  * Rising threshold: If previous value is <= this value and most recent value is >, output true
  * Falling threshold: If previous value is >= this value and most recent value is <, output false
  * Invert logic toggle: Invert the boolean output
##### Inlets
  1. Data stream to check threshold on
  2. Rising threshold: Value to use as rising threshold
  3. Falling threshold: Value to use as falling threshold
##### Outlets
  1. True of false based on logic 

### Aux_pH
##### Description
  * Used to convert raw millivolt readings of a pH probe to a pH value
  * Calibrate the sensor by getting the readings in buffers with pH of 4 and 7
##### UI Elements
  * Acid pH 4 calibration reading: millivolt reading when probe is placed in buffer with pH 4
  * Neutral pH 7 calibration reading:  millivolt reading when probe is placed in buffer with pH 7
  * Calculated pH of current mV reading
##### Inlets
  1. Current reading in (mV)
  2. pH 4 Acid mV
  3. pH 7 Neutral mV
##### Outlets
  1. pH value 


- - - -

## Other
Additional patches created before the current design of Loom. Support with Loom functionality may vary

* Z_3Dpan
* Z_App3DPan
* Z_AppVST
* Z_ArduinoIn
* Z_ChordDegree
* Z_Concatenate
* Z_DMX
* Z_Draw
* Z_DrumKit
* Z_Follower_GUI
* Z_InstrumentPosition
* Z_MidiIn
* Z_MidiOut
* Z_Movement
* Z_Musicbox
* Z_OSC_In
* Z_OSC_Out
* Z_OutLightsaber
* Z_RotaryDial
* Z_ScaleDegree
* Z_Sequencer
* Z_SimpleSamp
* Z_Spring
* Z_Switchblade
* Z_TapTempo


- - - -

## Data Processor
* Essentially a sandbox to use the other patches
* Starts out with just the ‘Patch Generator’
  * Has a dropdown of ‘patches’ that can be generated
    * Sorted in terms of inputs, outputs, data modification,  visualization
  * ‘Clear Last Patch’: deletes the most recently generated patch
  * ‘Clear All Patches’: deletes all patches 
  * Relevant files:
    * Patch_Generator.maxpat
    * PatchList.txt (kept separate so it is easy to modify list as new patches are added

### Usage
* Generate patches 
* Designed primarily to be used with Loom devices, so generating a/multiple ModuleCores will be useful
  * Once the device number is set to match the corresponding Loom device (number set in the Loom config file), data will output from the to outlets of the patch
* Attach viewers / data processing patches to the outlets 
* Attach command generating patches to inlets

* If you need to modify / inspect the internals of the patch that was generated in a DataProcessor file, you can Right Click > Object > ‘New View of Embedded Patcher’ (or ‘New Patcher with Contents of Embedded Patcher’ if you don’t want modifications to affect the DataProcessor file

* Can ‘Save As’ to create templated



- - - -



## Loom Implementation

### MaxSub
* Receives commands from Max
  * Commands can be generated from actuator patches connected to a ‘ModuleCore’ (or can be manually created strings)
* Can be run without MaxPub if you only want to receive commands and not send data, reliability may not be as good as with both modules
* Commands will be routed to ‘MaxSub’ module, which will ‘dispatch’ the command to the corresponding module’s ‘dispatch’ method to act upon it
* Needs `Loom.MaxSub().subscribe();` in the main loop
* Receives on UDP port 9000 + instance number (thus Max sends on this port)
* Requires an ‘InternetPlat’ module be instantiated
* When ‘ModuleCore’ is created / ‘Send IP’ is pressed, Max sends out the IP of the computer it is running on to the device of the specified instance number, if such a devices exists and is running ‘MaxSub’ and ‘MaxPub’ modules, the device will set that IP in the ‘MaxPub’ module to have better reliability sending messages 


### MaxPub
* Used to send data out to Max
* Can be used without MaxSub if you only want to send data, reliability may not be as good as with both modules
* Sends on UDP port 8000 + instance number (thus Max receives on this port)
* Requires an ‘InternetPlat’ module be instantiated
* Needs `Loom.MaxPub().publish();` in the main loop
  * After measuring and packaging data, this will send the data object/package out to Max




- - - -



## Max Implementation

### Loom Core
* Represents a Loom devices 
  * Outputs Loom device packaged data
  * Inputs commands to send to Loom device
* Nearly all of the logic is controlled by `Controller.js` file (the rest is essentially just the UI elements and formatting inputs to send to the Javascript object)

#### Controller.js Functions
* `json(j)`
  * Parse data the has been received via UDP in the `UDP_In` patcher (which does some initial preprocessing / filtering of non-data; see `Convert_Incoming.js` for details)
  * Calls function to update UI with new data
  * Extract the IP address of the Loom device, and respond with command to MaxPub module to have Loom device set the remote IP to be the IP of the computer running Max
  * Update the `Data` dict object
  * Forward the data json out
* `update_UI()`
  * Calls functions to update UI elements for battery, device name, blink messages received
* `update_UI_battery()`
  * Update the battery UI element (named `battery_indicator`) with the last received battery voltage
* `update_UI_device_name()`
  * Update the device name UI element (named `device_name`) with last received device name 
  * Max only specifies the device to connect to by ID number, it does not know about the name until it receives data, which is displayed for better human readability
* `update_UI_blink_received()`
  * Update the UI LED that blinks when data is received
* `enable_log(e)`
  * Enable or disable logging to the Max console
* `set_instance(i)`
  * Reset the UI of current device info
  * Set the UDP elements to receive / send on the updated ports
* `command(argSymbol)`
  * Given a symbol (string) of a command, format a message that the MaxSub module will recognize and be able to dispatch
  * Send the json command out to `UDP_Out` to be sent over UDP
* `reset_UI()`
  * Any UI clearing / resetting that needs to happen when switching devices, for example
* `set_ip()`
  * Create a command to MaxPub module to have Loom device set the remote IP to be the IP of the computer running Max
  * Send the json command out to `UDP_Out` to be sent over UDP



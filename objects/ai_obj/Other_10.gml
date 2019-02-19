/// @description Insert description here
// You can write your code in this editor

var arText = AUTOREPAIR ? "Off" : "On"

myText = [
	"What would you like to do?",
	["Set Pace","Turn Auto Repair "+arText,"Nothing"],
	"What pace would you like to set?",
	["Normal","Fast","Faster","Plaid"],
	"Understood."
	];

myNextLine[1] = [2,4,-1];
myNextLine[3] = [4,4,4,4];

//Toggle auto repair
myScripts[1] = [
	[control_cancel],
	[control_toggle_autorepair],
	[control_cancel],
]

//Set speed
myScripts[3] = [
	[control_change_pace, 0.1],
	[control_change_pace, 0.5],
	[control_change_pace, 1.0],
	[control_change_pace, 5.0]
];

myTypes = [0,1,0,1,0];



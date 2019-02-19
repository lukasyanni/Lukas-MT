/// @description Insert description here
// You can write your code in this editor

event_inherited();

//Init
myName = name;
myScripts = [];

// Disable tasking options if currently busy
if state != "Active" {
	
	var arText = AUTOREPAIR ? " (Note: this will disable auto-repair)" : "";
	
	myText = [
		"I'm currently busy. Should I stop what I'm doing and return to my post?",//+arText,
		["Yes","No"]
	];
	myTypes = [0,1];
	myScripts = [
		[control_cancel],
		[
			[change_variable, id, "state", "Active"],
			[control_cancel]
		]
	];
	exit;
}

//DEBUGGING: Make sure to remove this once repairing works!!!
/*
medbay_obj.p.hp = 0;
medbay_obj.e.hp = 1;
medbay_obj.c.hp = 2;

global.Physical = 3;
global.Electrical = 3;
global.Computerized = 3;
*/

//For repair: [0] = names, [1] = nextline values, [2] = array of damaged subs
var damObj = subsystem_get_damaged(sys);
var subs = damObj[2];



//Greeting
myText = [
	//0
	crew_get_text("hello"), 
	//1
	["Talk",/*"Move",*/"Repair","Done"], 
	//2
	"Just wanted to chat, huh?",
	//3
	"Where should I move?",
	//4
	["Medbay","Engines","Comms","Systems"],
	//5
	"What needs repaired?",
	//6
	damObj[0],
	//7
	"You got it. We'll need P resources, which I have Level "+string(pProf)+" proficiency in. How many should we use? (We have "+string(global.Physical)+")",
	//8
	"You got it. We'll need E resources, which I have Level "+string(eProf)+" proficiency in. How many should we use? (We have "+string(global.Electrical)+")",
	//9
	"You got it. We'll need C resources, which I have Level "+string(cProf)+" proficiency in. How many should we use? (We have "+string(global.Computerized)+")",
	//10
	["0","1","2","3","4","5"],
	//11
	["0","1","2","3","4","5"],
	//12
	["0","1","2","3","4","5"]
];

//repair
myScripts[10] = [
	[control_cancel],
	[crew_repair_sub,id,sys.p,1],
	[crew_repair_sub,id,sys.p,2],
	[crew_repair_sub,id,sys.p,3],
	[crew_repair_sub,id,sys.p,4],
	[crew_repair_sub,id,sys.p,5],
];

myScripts[11] = [
	[control_cancel],
	[crew_repair_sub,id,sys.e,1],
	[crew_repair_sub,id,sys.e,2],
	[crew_repair_sub,id,sys.e,3],
	[crew_repair_sub,id,sys.e,4],
	[crew_repair_sub,id,sys.e,5],
];

myScripts[12] = [
	[control_cancel],
	[crew_repair_sub,id,sys.c,1],
	[crew_repair_sub,id,sys.c,2],
	[crew_repair_sub,id,sys.c,3],
	[crew_repair_sub,id,sys.c,4],
	[crew_repair_sub,id,sys.c,5],
];

//myScripts[6] = repScripts;


//moving
myScripts[4] = [[crew_move, MECS[0], id],[crew_move, MECS[1], id],[crew_move, MECS[2], id],[crew_move, MECS[3], id]];



myNextLine = [
	//0
	0,
	//1
	[2,/* Moving 3,*/ 5,-1],
	//2
	1,
	//3
	0,
	//4
	[-1,-1,-1,-1],
	//5
	0,
	//6
	damObj[1],
	//7
	10,
	//8
	11,
	//9
	12,
	//10
	[2,2,2,2,2,2],
	//11
	[2,2,2,2,2,2],
	//12
	[2,2,2,2,2,2]
];



//General
myTypes = [0,1,0,0,1,0,1,0,0,0,1,1,1];

//variable_instance_set(instance_find(camera_obj, 0), "subject", id);
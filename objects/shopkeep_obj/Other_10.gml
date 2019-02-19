/// @description Insert description here
// You can write your code in this editor

event_inherited();

//mySpeaker[0] = self;
myText[0] = "Welcome to my fine establishment!";

//mySpeaker[1] = player_obj;
myText[1] = ["View Stock", "Learn about components", "Packages", "Leave"];
myNextLine[1] = [2, 3, 10, -1];

//mySpeaker[2] = self;
myText[2] = "You will find an assortment of items in this room. Interact with any of them and I will tell you the type, size, and cost.";
myNextLine[2] = 1;

//mySpeaker[3] = self;
myText[3] = "Of course! Which kind would you like to learn more about?";

//mySpeaker[4] = player_obj;
myText[4] = ["Physical","Electrical","Computerized","General","Nevermind"];
myNextLine[4] = [5,6,7,8,1];

//mySpeaker[5] = self;
myText[5] = "Physical Components are used to repair the hulls, doors, and other physical aspects of your ship.";
myNextLine[5] = 4;

//mySpeaker[6] = self;
myText[6] = "Electrical Components are used to repair the wiring, cables, and other electrical aspects of your ship.";
myNextLine[6] = 4;

//mySpeaker[7] = self;
myText[7] = "Computerized Components are used to repair the hardware, software, and other computerized aspects of your ship.";
myNextLine[7] = 4;

//mySpeaker[8] = self;
myText[8] = "Physical, Electrical, and Computerized Components are what you use to repair the corresponding subsystem of your ship.";
myText[9] = "They're generally referred to as PEC Components.";

myNextLine[9] = 4;

myText[10] = "You can either purchase your supplies manually, or choose from a selection of pre-made packages. Which package would you like to learn more about?";
//Athlete: Physical and Medical | Doctor: Medical * 2
//Engineer: Electrical and Computerized | Beginner: Even Everything
myText[11] = ["Athlete","Doctor","Engineer","Beginner","Nevermind"];
myNextLine[11] = [12,14,16,18,1];

#region Packages

//ATHLETE
myText[12] = "The 'Athlete' package contains the following components:"+
" 100 Physical, 50 Electrical, 50 Computerized, 100 Medical." +
" Would you like to buy it?";
myText[13] = ["Yes", "No"];
myScripts[13] = [
	[components_add_from_package, 100, 50, 50, 100],
	[control_cancel]
];
myNextLine[13] = [20, 11];

//DOCTOR
myText[14] = "The 'Doctor' package contains the following components:"+
" 50 Physical, 50 Electrical, 50 Computerized, 150 Medical." +
" Would you like to buy it?";
myText[15] = ["Yes", "No"];
myScripts[15] = [
	[components_add_from_package, 50, 50, 50, 150],
	[control_cancel]
];
myNextLine[15] = [20, 11];

//ENGINEER
myText[16] = "The 'Engineer' package contains the following components:"+
" 50 Physical, 100 Electrical, 100 Computerized, 50 Medical." +
" Would you like to buy it?";
myText[17] = ["Yes", "No"];
myScripts[17] = [
	[components_add_from_package, 50, 100, 100, 50],
	[control_cancel]
];
myNextLine[17] = [20, 11];

//BEGINNER
myText[18] = "The 'Beginner' package contains the following components:"+
" 75 Physical, 75 Electrical, 75 Computerized, 75 Medical." +
" Would you like to buy it?";
myText[19] = ["Yes", "No"];
myScripts[19] = [
	[components_add_from_package, 75, 75, 75, 75],
	[control_cancel]
];
myNextLine[19] = [20, 11];

myText[20] = "Good choice! Once you have your crew configured, you'll be ready to go.";

#endregion

myTypes = [0,1,0,0,1,0,0,0,0,0,0,
		1,0,1,0,1,0,1,0,1,0];
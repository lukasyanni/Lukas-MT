/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//myPortrait = crew_spr;
myName = "Req. Officer";
type = "Human";

first = true;

objective_create(self, "Get briefed by the Requisitions Officer", c_red);

introEvent = create_textevent(["Welcome to Mother Station. Press 'Z' to continue.", 
"You can also use 'Z' to interact with other people and objects.",
"You'll need to report to my office to be briefed on your mission. Follow your objective marker to find it.",
"You can also press 'TAB' to show your current objectives. Try it now."],[rqOfficer_obj,rqOfficer_obj,rqOfficer_obj,rqOfficer_obj]);

introEvent.myTextbox.deleteType = "Hard";
tabObj = objective_create(rqOfficer_obj, "Press [TAB] to open your current objective", c_red, false);


alarm[0] = 99;

myColorNumber = 4;
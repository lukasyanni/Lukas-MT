/// @description Insert description here
// You can write your code in this editor

//Call subsystems via the 'subs' ds map

globalvar MECS; 
//MECS = [instance_find(medbay_obj,0),instance_find(engines_obj,0),instance_find(comms_obj,0),instance_find(systems_obj,0)];
MECS = [medbay_obj,engines_obj,comms_obj,systems_obj];
//DEMO ONLY - This will need refactored most likely
globalvar CREW;
CREW = [];

//TODO - Position should be controlled by assignment to MECS
sysPositions = [[360, 100],[342,860],[1400,100],[1400,870]]

for (var i=0; i<array_length_1d(MECS); i++) {
	//Init Crew
	//if (gameController_obj.Crew[i] != "None") {
	
		CREW[i] = crew_init(/*x_generate_name("M","Full"),*/ MECS[i]);
		CREW[i].x = MECS[i].x+100;
		CREW[i].y = MECS[i].y+100;
	//}
	
}

//Event Controller
if !instance_exists(eventController_obj) {
	instance_create_layer(x,y,layer,eventController_obj);
}

room_goto(mother_room);

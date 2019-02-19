/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

var ready = crew_check_if_ready();
var readyText = "";

if (!ready) {
	readyText = "Your crew isn't ready... See the Academy Officer below us.";
	myText[0] = readyText;
	myText[1] = ["OK"];
	myText[2] = "";
	myNextLine = [0,[-1],-1,-1];
	myTypes = [0,1,0,0];
}

if (ready) {
	readyText = "You're ready to depart!";
	myText = [
		readyText,"Shall we commence takeoff?",["Not Yet","Let's Go!"]
	]
	myNextLine = [0,0,[-1,3]]
	myScripts[3] = [control_change_room, ship_room];
	myTypes = [0,0,1,0];
}

myText[3] = "Sounds good. Get ready for your trip to Mars!";


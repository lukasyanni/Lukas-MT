/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (type != "None" and size > 0) {

	myText[0] = "Those are " + type + " Components.";
	
	myText[1] = "How many would you like to buy?";
	
	myText[2] = ["10","30","50", "Cancel"];
	myNextLine[2] = [3,3,3,-1];
	myScripts[2] = [
		[change_variable, id, "choice_variable", 10],
		[change_variable, id, "choice_variable", 30],
		[change_variable, id, "choice_variable", 50],
		[change_variable, id, "choice_variable", 0]
	];
	
	myText[3] = "You purchased " + string(choice_variable) + " " + type + " Components."
	myNextLine[3] = -1;
	
	myTypes = [0,0,1,0];

}
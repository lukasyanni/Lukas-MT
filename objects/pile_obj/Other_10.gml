/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (type != "None" and size > 0) {

	myText[0] = "That's a "+ sizeText[size] + " pile of " + type + " Components.";
	myTextCol[0] = [10, sizeColor[size], 10+string_length(sizeText[size]), c_white];
	
	myText[1] = "It contains " + string(amount[size]) + " components and is worth " + string(amount[size]) + " credits.";
	myTextCol[1] = [13, sizeColor[size], 13+string_length(string(size))+12, c_white];
	
	myText[2] = "How many would you like to buy? (You currently have " +string(global.Credits)+ " Credits)";
	myText[3] = ["1 (x"+string(amount[size])+")","2 (x"+string(amount[size])+")","3 (x"+string(amount[size])+")", "Cancel"];
	myScripts[3] = [
		[components_buy, worth[size]*1, string_char_at(type,1), amount[size]*1],
		[components_buy, worth[size]*2, string_char_at(type,1), amount[size]*2],
		[components_buy, worth[size]*3, string_char_at(type,1), amount[size]*3],
		[control_cancel]
	]
	myNextLine[3] = [4,4,4,-1];
	
	myText[4] = "You purchased the " + type + " Components."
	
	myTypes = [0,0,0,1];

}
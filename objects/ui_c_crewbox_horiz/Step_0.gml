/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

for (var i=0; i<array_length_1d(CREW); i++) {
		var nameStr = CREW[i].name;
		nameStr = string_replace(nameStr," ","#");
		items[i] = nameStr+"#"; 
		sprites[i] = CREW[i].sprite_index;
	}
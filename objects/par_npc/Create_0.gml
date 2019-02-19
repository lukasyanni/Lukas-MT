/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

myOptions = choose(
	["M",spr_char, spr_char_talking,crew_float_spr],
	["F",npc_female_engineer_portrait_spr,npc_female_engineer_portrait_talking_spr,npc_female_engineer_spr]
	);

sprite_index = myOptions[3];

t = 0; //irandom_range(1,270);
state = "Floating";
center = sprite_height/2;
type = "None";
myName = x_generate_name(myOptions[0],"Full");
name = myName;
myPortrait = myOptions[1];
myPortraitIdle = myOptions[1];
myPortraitTalk = myOptions[2];
detection_radius = 96;

//pal swapper
myColorNumber = 0;


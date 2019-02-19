/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

type = "None";
state = "None";
size = 0;
myName = "Pile";

worth = [0,10,30,50];
amount = [0,10,30,50];

sizeText = ["Non-Existent", "small", "medium", "large"];
sizeColor = [c_white, c_aqua, c_lime, c_red];

mySpeaker = shopkeep_obj;
myPortrait = shopkeep_obj.myPortrait;

center = -60;

detection_radius = sprite_width;
transaction = false;
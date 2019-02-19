/// @description Insert description here
// You can write your code in this editor

//if (player_obj.x > bbox_left && player_obj.x < bbox_right) {
if place_meeting(x,y-32,player_obj) {
	y = player_obj.y;
}

var shopkeep = instance_place(x,y-32,shopkeep_obj)
if shopkeep != noone {
	shopkeep.y = y//-shopkeep.sprite_height;
}

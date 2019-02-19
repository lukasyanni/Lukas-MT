/// @description Insert description here
// You can write your code in this editor

if !instance_exists(obj_textbox) or (abs(x-player_obj.x) < 4 and abs(y-player_obj.y < 4))  {
	player_obj.speed = 0;
	instance_destroy();
	exit;
}

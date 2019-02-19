/// @description Insert description here
// You can write your code in this editor

//if (live_call()) return live_result;

if (instance_exists(moveto_obj)) {
	//move_towards_point(moveto_obj.x,moveto_obj.y,4);
}

if hspeed != 0 and vspeed == 0 {
	image_xscale = sign(hspeed);
}

var crewNearest = instance_nearest(x,y,par_npc)

if speed == 0 and distance_to_object(crewNearest) < 64 {
	image_xscale = crewNearest.x > x ? 1 : -1;
}

//Zoom out max
/*
if (speed != 0) {
	zoom = lerp(zoom, 1, .1);
} else {
	//Zoom in some
	zoom = lerp(zoom, 2, .1);
}

//Zoom in max
if instance_exists(obj_textbox) and !instance_exists(crewGen_menu_obj) {
	collider = noone;
	zoom = lerp(zoom, 3, .1);
}

if instance_exists(crewGen_menu_obj) {
	zoom = lerp(zoom, 1, .1);
}
*/



//Allow Movement
if(!instance_exists(obj_textbox) and camera_obj.subject == player_obj and !PAUSED) {
	player_set_dir(8);
} else {
	speed = 0;
}

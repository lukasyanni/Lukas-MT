/// @description Insert description here
// You can write your code in this editor

hspeed = 0;

if (instance_exists(player_obj)) {
	if player_obj.x >= x {
		//instance_create_layer(x+3/4*detection_radius, y+center, layer, moveto_obj);
		player_obj.image_xscale = -1;
		if (type == "Human") image_xscale = 1;
	}

	else if player_obj.x < x {
		//instance_create_layer(x-3/4*detection_radius, y+center, layer, moveto_obj);
		player_obj.image_xscale = 1;
		if (type == "Human") image_xscale = -1;
	}
}
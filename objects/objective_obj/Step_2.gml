/// @description Insert description here
// You can write your code in this editor
if (!instance_exists(player_obj) || !instance_exists(objective)) {
	instance_destroy();
	exit;
}

x = player_obj.x;
y = player_obj.y-player_obj.sprite_height/2;

image_alpha = (distance_to_object(objective)-100)/100;

if objective.y < (y-80) {
	image_angle = 90;
} else if objective.y > (y+80) {
	image_angle = -90;	
} else if objective.x < x {
	image_angle = 180;
} else {
	image_angle = 0; //point_direction(x, y, objective.x, objective.y);
}

if (instance_exists(obj_textbox)) {
	image_alpha = 0;
}

if completeCondition {
	instance_destroy();
}
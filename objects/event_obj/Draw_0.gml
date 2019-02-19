/// @description Insert description here
// You can write your code in this editor

//if (live_call()) return live_result;

if (sprite != noone) {
	sprite_index = sprite;
	//image_index = sprite;
	
	image_angle = rot;
	draw_self();
	//draw_sprite_ext(sprite,-1,5000,1500,1,1,rot,c_white,1);
} 



rot = abs(rot) > 360 ? rot - (360*sign(rot)) : rot + (.25*sign(rot));
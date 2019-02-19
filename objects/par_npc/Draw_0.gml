/// @description Insert description here
// You can write your code in this editor

if (live_call()) return live_result;

if (instance_exists(player_obj)) {
	image_xscale = x < player_obj.x ? 1 : -1;
}

///Draw With Unlimited Palette Swap     
pal_swap_set(crew_palette_spr,myColorNumber,false);
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
pal_swap_reset();

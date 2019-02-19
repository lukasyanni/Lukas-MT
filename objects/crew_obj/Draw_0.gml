/// @description Insert description here
// You can write your code in this editor
if (live_call()) return live_result;

event_inherited();

draw_set_font(crew_font);

if global.DEBUG {
	draw_set_color(c_red);
	draw_rectangle(bbox_left+hspeed,bbox_top,bbox_right+hspeed,bbox_bottom, true);
	draw_set_color(c_white);
}

if state == "Repair" {
	draw_sprite(crew_hardhat_spr,0,x+image_xscale*3,y-sprite_height+4);
}



//draw_sprite_ext(spr,0,x,y+oscil,image_xscale, image_yscale, image_angle, image_blend, image_alpha);


//Draw name

var nStr = name + " (" + string_char_at(special, 0) + ")";

var nameWidth = string_width(nStr);

alph = distance_to_object(player_obj) <= 64 ? lerp(alph, 1, .1) : lerp(alph, 0, .1);
draw_set_alpha(alph);

draw_set_halign(fa_left);
draw_set_color(c_black);
draw_rectangle(x-nameWidth/2-4,y-sprite_height-4,x+nameWidth/2+4,y-sprite_height*1.5-4,false);
draw_set_color(c_white);
//draw_rectangle(x-nameWidth/2-4,y-10,x+nameWidth/2+4,y-40,true);
draw_set_halign(fa_center);
draw_text(x,y-sprite_height*1.5, nStr);

//reset
draw_set_alpha(1);
draw_set_halign(fa_left);

//Draw specialty
draw_set_halign(fa_center);
draw_set_color(c_red);
//draw_text_transformed(x,y+sprite_height/3,string_char_at(special, 0),2,2,0);
draw_set_color(c_white);
draw_set_halign(fa_left);
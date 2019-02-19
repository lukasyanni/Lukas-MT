/// @description Insert description here
// You can write your code in this editor

if (live_call()) return live_result;

// Inherit the parent event
event_inherited();

draw_sprite(panelTab,0,x+100,y+yy/16);
draw_set_color(c_white);
draw_set_font(f_normal);
draw_set_valign(fa_middle);
draw_text_transformed(x+115,y+yy/16+30,"MENU",1,1,270);

draw_set_valign(fa_top);
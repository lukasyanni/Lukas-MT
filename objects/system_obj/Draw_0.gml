/// @description Insert description here
// You can write your code in this editor

if (live_call()) return live_result;

//draw_self();

//Background
draw_set_color(c_black);
draw_rectangle(x-150,y+10,x+150,y+60, false);

//Text
draw_set_halign(fa_center);
draw_set_font(Arial);
draw_set_color(c_white);
for (var z=0; z<3; z++) {
	var subs = [p,e,c]; 
	var sub = subs[z];
	draw_text(x+(z-1)*100, y+15, sub.name);
	draw_text(x+(z-1)*100, y+40, sub.hp);
}

draw_set_color(c_white);
draw_set_halign(fa_left);
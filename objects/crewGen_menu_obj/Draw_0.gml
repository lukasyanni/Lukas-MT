/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
//event_inherited();

if (live_call()) return live_result;

var xx = x;
var yy = y+40;

//draw_sprite(mySprite,0,xx,yy);
draw_set_color(c_black);
if !instance_exists(obj_textbox) {
	draw_rectangle(0,0,room_width,room_height,false);
}
draw_set_color(c_white);

var crew = CREW[crewMenu.itemindex];

//Draw Sprite

draw_rectangle(
	xx-220-crew.sprite_width*2,
	yy-80-crew.sprite_height*1.25,
	xx-220+crew.sprite_width*2,
	yy-80+crew.sprite_height*.25,
	false
);

draw_set_color(c_red);
if (crewMenu.itemindex < array_length_1d(crewMenu.items)-1) {
	draw_triangle(
		xx-220+crew.sprite_width*2+20, 
		yy-80-crew.sprite_height/2-20,
		
		xx-220+crew.sprite_width*2+20, 
		yy-80-crew.sprite_height/2+20,
		
		xx-220+crew.sprite_width*2+40,
		yy-80-crew.sprite_height/2,
		
		false
	)
}

if (crewMenu.itemindex > 0) {
	draw_triangle(
		xx-220-crew.sprite_width*2-20, 
		yy-80-crew.sprite_height/2-20,
		
		xx-220-crew.sprite_width*2-20, 
		yy-80-crew.sprite_height/2+20,
		
		xx-220-crew.sprite_width*2-40,
		yy-80-crew.sprite_height/2,
		
		false
	)
}

// Draw active sprite
pal_swap_set(crew_palette_spr,crew.myColorNumber,false);
draw_sprite(crew.sprite_index,0,xx-220,yy-80);
pal_swap_reset();  

//Draw area text
draw_set_color(c_red);
draw_set_font(fnt_dialogue);
draw_set_halign(fa_center);
draw_text(xx-220,yy-210,crew.special);
draw_set_halign(fa_left);
draw_set_color(c_white);
draw_set_font(Arial);

//Draw active text
draw_set_color(c_white);
draw_text(xx-300,yy-50, "Name: "+crew.name+
"\nSpecial: "+string(crew.special)+
"\nSubsystem Profeciencies:\n\n"+"   "+
"P: "+string(crew.pProf)+"   "+
"E: "+string(crew.eProf)+"   "+
"C: "+string(crew.cProf)
);
	
//draw_text(xx,yy-50,"Points Remaining: "+string(points));
	
draw_text(xx-300,yy+80,"Press [Esc] to exit");


if (global.DEBUG) {
	draw_set_color(c_yellow);
	draw_circle(xx,yy,24,false);
	draw_set_color(c_white);
}

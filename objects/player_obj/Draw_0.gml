/// @description Insert description here
// You can write your code in this editor

//if (live_call()) return live_result;

draw_set_blend_mode(bm_normal);

if global.DEBUG {draw_self();}

var oscil = sin(t)*3;
t += .05; if t >= 360 {t=0;}

if instance_exists(obj_textbox) {
	spr_rot = 0;
}

//remove float
oscil = 0;

draw_sprite_ext(spr,0,x,y,image_xscale, image_yscale, spr_rot, image_blend, image_alpha);

image_angle = spr_rot;

// detect anchor points
if (hspeed == 0 and vspeed == 0 and !instance_exists(obj_textbox)) {
	alph += .05;
} else {
	alph = 0;
}

alph = clamp(alph,0,1);

var params = [
	[-1,0,180],
	[1,0,0],
	[0,-1,90],
	[0,1,270]
];

var count = 32;
var maxRange = 64*100;
var anchors = [noone,noone,noone,noone];

while (count < maxRange) {
	for (var i=0; i<array_length_1d(params); i++) {
			
			if anchors[i] != noone {
				continue;
			}
			
			var apts = params[i];
			
			//  check for wall and don't draw marker if detected
			if collision_line(
				x+(apts[0]*80), 
				y-sprite_height/2+(apts[1]*80),
				x + apts[0]*80 + lengthdir_x(count, apts[2]),
				y-sprite_height/2+(apts[1]*80) + lengthdir_y(count, apts[2]),
				wall_obj, false, true
			) {
				anchors[i] = noone;
				continue;
			} else {
			
			anchors[i] = collision_line(
				x+(apts[0]*80), 
				y-sprite_height/2+(apts[1]*80),
				x + apts[0]*80 + lengthdir_x(count, apts[2]),
				y-sprite_height/2+(apts[1]*80) + lengthdir_y(count, apts[2]),
				pAnchor_obj, false, true
			)
		}
	}
	count += 16;
}

for (var i=0; i<array_length_1d(anchors); i++) {
	if anchors[i] != noone {
		
		var apts = params[i];
		var rot = apts[2];
		
		/*
		var col = surface_getpixel(
			application_surface,
			x+lengthdir_x(sprite_get_width(objective_spr), rot),
			y-sprite_height/2,
		);
		*/
		
		var col = c_black;
		if place_meeting(
			x+lengthdir_x(sprite_get_width(objective_spr), rot),
			y-sprite_height/2,
			par_npc
		) {
			col = c_white;
			/*
			draw_circle(
				x+lengthdir_x(sprite_get_width(objective_spr), rot),
				y-sprite_height/2,
				6,
				false
			)
			*/
		}
		
		draw_sprite_ext(objective_spr,0,x,y-sprite_height/2,1,1,rot,col,alph);
		
		//show_debug_message("Anchor at position "+string(i)+" is defined.");
		//var tstr = col == c_black;
		//show_debug_message("color at position "+string(i)+": "+string(tstr));
		
	}
}

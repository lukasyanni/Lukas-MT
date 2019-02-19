/// @description Insert description here
// You can write your code in this editor

if (live_call()) return live_result;

draw_sprite_ext(ship_bg,0,0,0,1,1,0,c_white,1.25-camera_obj.zoom);

var lay_id = layer_get_id("Ship_Interior");
if layer_exists(lay_id) {
	if 1.25-camera_obj.zoom < .8 {
		layer_set_visible(lay_id, true);
	} else {
		layer_set_visible(lay_id, false);
	}
}
/*
for (var i = 0; i < array_length_1d(MECS); i++) {
	if (global.DEBUG) {
		var str = mecs_get_info(MECS[i]);
		draw_text(32+200*i,32,str);
	}
	
	var xx = sysPositions[i];
	xx = xx[0];
	var yy = sysPositions[i];
	yy = yy[1];
	
	var sys = MECS[i];
	var subs = sys[? "subs"];
	var ids = ["P","E","C"];
	var colors = [c_lime,c_yellow,c_navy];
	for (var z=0; z<3; z++) {
		var sub = subs[? ids[z]];
		if i<3 draw_set_color(colors[z]);
		draw_text(xx+(z+1)*100, yy, sub[? "name"]);
		draw_set_color(c_white);
		draw_text(xx+(z+1)*100, yy+32, sub[? "damage"]);
	}
	
	
	for (var j = i; j < array_length_1d(CREW)+i; j++) {
		if (global.DEBUG) {
			var ind = j-i;
			var crew = CREW[ind];
			draw_text(32+200*j,32,crew.name);
			draw_text(32+200*j,64,crew.sys[? "name"]);
		}
	}
}
*/
	

	




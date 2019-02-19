/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//player_obj.zoom = 1;

var cam = view_get_camera(0);
cam_x = camera_get_view_x(cam);
cam_y = camera_get_view_y(cam);
xx = window_get_width();
yy = window_get_height();

var w = sprite_get_width(sprPanel);
var h = sprite_get_height(sprPanel);
y = cam_y;

draw_rectangle(x+32,y+64,x+w-32,y+h*3/4,true);


#region Easing

if (easing[? "time"] < easing[? "duration"]) {
	x = cam_x+ease_out_back(easing[? "time"],easing[? "start"],easing[? "dest"]-easing[? "start"],easing[? "duration"]);
	easing[? "time"]++;
}

#endregion

var inMotion = easing[? "duration"] != easing[? "time"];

for (var i = 0; i < array_length_1d(btnList); i++) {
	with btnList[i] uiMouseHandle = !inMotion;	
}

if !inMotion and x > room_width {
	with ui_defaults {
		if (uiAnchor == other)
			instance_destroy();	
	}
	instance_destroy();
}
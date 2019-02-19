/// @description Insert description here
// You can write your code in this editor

if (live_call()) return live_result;

/*
if instance_exists(obj_textbox) and !instance_exists(crewGen_menu_obj) {
	tbBuffer = lerp(tbBuffer, sprite_get_height(spr_dialoguebox)/4, 0.1);
} else {
	tbBuffer = lerp(tbBuffer, 0, 0.1);
}
*/

if instance_exists(obj_textbox) and obj_textbox.speaker != noone {
	subject = obj_textbox.speaker[obj_textbox.page];
	//show_error(string(subject),true);
} else if instance_exists(crewGen_menu_obj) {
	subject = crewGen_menu_obj;
} else {
	subject = player_obj;
}

x = lerp(x, subject.x, .1);
y = lerp(y, subject.y, .1);

if (instance_exists(obj_textbox) and instance_exists(event_obj) and event_obj.active and event_obj.actions != noone) {
	zoom = lerp(zoom, .25, .1);
} else {
	var fac = zoom <= 1 ? .025 : .1;
	zoom = lerp(zoom, 2, fac);
}

//Lock into aspect ratio
var vw = (view_wport[0])/zoom;
vw = floor(vw);
var vh = (9*vw)/(16);

camera_set_view_size(view_camera[0], vw, vh);

/*
if distance_to_object(subject) > 120 {
	//var s = keyboard_check(vk_anykey) ? 12: 0;
	x = lerp(x, subject.x, .1);
	y = lerp(y, subject.y, .1);
	
	//move_towards_point(subject.x,subject.y, 80)
} else {
	
	
	//tbBuffer = floor(tbBuffer*100)/100;
	x = subject.x;
	y = subject.y;//+tbBuffer;
	
}
*/
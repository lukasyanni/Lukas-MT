/// @description Insert description here
// You can write your code in this editor
event_inherited();

draw_set_valign(fa_top);

var cam = view_get_camera(0);
cam_x = camera_get_view_x(cam);
cam_y = camera_get_view_y(cam);
xx = window_get_width();
yy = window_get_height();

y = cam_y;
x = cam_x+40+ease_out_back(lb_easing[? "time"],lb_easing[? "start"],lb_easing[? "dest"]-lb_easing[? "start"],lb_easing[? "duration"]);


#region Leftbox Easing
if (lb_easing[? "time"] < lb_easing[? "duration"]) {
	lb_easing[? "time"]++;
}
#endregion

#region Show/Hide Menu

if !menuOpen and (menuLock or point_in_rectangle(mouse_x,mouse_y, 
cam_x+4,cam_y+yy/16,
cam_x+32,cam_y+yy/16+200) 
and mouse_check_button_pressed(mb_left)) {
	
	show_debug_message("OPENING MENU TAB");
	
	menuOpen = true;
	lb_easing[? "start"] = -140;
	lb_easing[? "dest"] = -40;
	lb_easing[? "duration"] = 30;
	lb_easing[? "time"] = 0;
	
}

else if menuOpen and !menuLock and point_in_rectangle(mouse_x,mouse_y, cam_x,cam_y,cam_x+200,cam_y+200) and mouse_check_button_pressed(mb_left) {
	
	show_debug_message("CLOSING MENU TAB");
	
	menuOpen = false;
	lb_easing[? "start"] = -40;
	lb_easing[? "dest"] = -140;
	lb_easing[? "duration"] = 30;
	lb_easing[? "time"] = 0;	
	
}

#endregion


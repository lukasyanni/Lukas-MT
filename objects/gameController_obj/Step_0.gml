/// @description Insert description here
// You can write your code in this editor

if !instance_exists(player_obj) exit;

var cam = view_get_camera(0);
cam_x = camera_get_view_x(cam);
cam_y = camera_get_view_y(cam);
xx = window_get_width();
yy = window_get_height();

PAUSED = instance_exists(obj_textbox) || keyboard_check(vk_tab);

//Ship Controller
if room == ship_room {
	if !PAUSED {
	
		//Get Random Event
		if TIME > 60 {
			with (eventController_obj) {
				event_user(0);
			}
			TIME = 0;
		}
		//Move time forward
		TIME += PACE;
	}
}
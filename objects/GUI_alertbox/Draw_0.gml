ctb_draw();
//draw_sprite( char_sprite, 0, x+6, y+6 );

var cam = view_get_camera(0);
var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);

xx = display_get_width();
yy = display_get_height();

#region Textbox Easing
if (ab_easing[? "time"] < ab_easing[? "duration"]) {
	ab_easing[? "time"]++;
}
#endregion

x = cam_x + xx * .35;
y = cam_y + ease_out_back(ab_easing[? "time"],ab_easing[? "start"],ab_easing[? "dest"]-ab_easing[? "start"],ab_easing[? "duration"]);

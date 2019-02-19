/// @description menu_draw_box(x, y, w, h, alpha)
/// @param x
/// @param  y
/// @param  w
/// @param  h
/// @param  alpha
var 
xx = argument[0], 
yy = argument[1], 
ww = argument[2], 
hh = argument[3], 
alpha = argument[4],
border_w = sprite_get_width(s_box_border), border_h = sprite_get_height(s_box_border);
draw_set_color(c_black);
draw_set_alpha(alpha);
draw_rectangle(xx + (border_w - 1), yy + (border_h - 1), ww - (border_w), hh - (border_h), false);
draw_sprite_stretched_ext(s_box_border, 6, xx, yy + border_h, border_w, hh - yy - (border_h * 2), c_white, alpha);
draw_sprite_stretched_ext(s_box_border, 7, ww - border_w, yy + border_h, border_w, hh - yy - (border_h * 2), c_white, alpha);
draw_sprite_stretched_ext(s_box_border, 4, xx + (border_w - 1), yy, ww - xx - (border_w * 2) + 1, border_h, c_white, alpha);
draw_sprite_stretched_ext(s_box_border, 5, xx + (border_w - 1), hh - border_h, ww - xx - (border_w * 2) + 1, border_h, c_white, alpha);
draw_sprite_ext(s_box_border, 0, xx, yy, 1, 1, 0, c_white, alpha);
draw_sprite_ext(s_box_border, 1, ww - border_w, yy, 1, 1, 0, c_white, alpha);
draw_sprite_ext(s_box_border, 2, xx, hh - border_h, 1, 1, 0, c_white, alpha);
draw_sprite_ext(s_box_border, 3, ww - border_w, hh - border_h, 1, 1, 0, c_white, alpha);

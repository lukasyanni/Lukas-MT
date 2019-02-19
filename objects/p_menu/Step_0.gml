draw_set_font(global.menu.font);
var char_w = sprite_get_width(s_font_normal), char_h = sprite_get_height(s_font_normal);
if (w <= 0) { w = string_width(string_hash_to_newline(string_get_longest(list))) + (char_w * 2); }
if (h <= 0) { h = (ds_list_size(list) * char_h) + (char_w * 2); }
if (status == 1)
{
  index = (index + (keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up))) % ds_list_size(list);
  if (index < 0) { index = ds_list_size(list) - 1; }
  if (keyboard_check_pressed(ord("Z"))) { status = 2; }
}
if (status == 2)
{
  status = 0;
  event_user(0);
}


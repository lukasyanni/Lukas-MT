/// @description Example of extra stuff drawn alongside the menu
event_inherited();
var str = "---#---#--:--", ww;
switch (index) {
  case 0:
  str = "Lord Buttfart#Uncharted Territories#10:44";
  break;
  case 1:
  str = "Mr. Simpleton#The legend awakens#00:35";
  break;
}
ww = string_width(string_hash_to_newline(str));
menu_draw_box(global.menu.w - ww - 24, global.menu.h - 48, global.menu.w - 8, global.menu.h - 8, 1);
draw_set_color(c_white);
draw_text(global.menu.w - ww - 16, global.menu.h - 40, string_hash_to_newline(str));


if (status < 0 || w == 0 || h == 0) { exit; }
draw_set_font(global.menu.font);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
menu_draw_box(x, y, x + w, y + h, 1);
var color;
for (var n = 0; n < ds_list_size(list); n++)
{
  color = c_gray;
  if ((index == n) && (status == 1)) { color = c_white; }
  draw_set_color(color);
  draw_text(x + 8, y + 8 + (n * 8), string_hash_to_newline(list[| n]));
}


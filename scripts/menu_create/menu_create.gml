/// @description menu_create(index, x, y, w, h)
/// @param index
/// @param  x
/// @param  y
/// @param  w
/// @param  h
var menu,
index = argument[0],
xx = argument[1],
yy = argument[2],
ww = argument[3],
hh = argument[4];
menu = instance_create(xx, yy, index);
menu.depth = depth - 1;
menu.w = ww;
menu.h = hh;
menu.parent = id;
return menu;

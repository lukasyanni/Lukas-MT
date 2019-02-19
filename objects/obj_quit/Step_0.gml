//Position object procedurally
if state = 1 {
   x = __view_get( e__VW.XView, global.display_view ) + (__view_get( e__VW.WView, global.display_view )*0.5);
   y = __view_get( e__VW.YView, global.display_view ) + __view_get( e__VW.HView, global.display_view ) - sprite_height - 32;
}
if state = 2 {
   x = __view_get( e__VW.XView, global.display_view ) + (sprite_width*0.5);
   y = __view_get( e__VW.YView, global.display_view ) + __view_get( e__VW.HView, global.display_view ) - (sprite_height*0.5);
}


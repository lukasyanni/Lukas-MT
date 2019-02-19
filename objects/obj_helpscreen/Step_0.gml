//Fade in
if state < 1 {
   if alpha < 0.9 {
      alpha += 0.1;
      state += 0.1; //Note: this is a very weird way to handle this variable,
   } else {         //however it is necessary in order to be YYC compatible.
      state = 1;
   }               
}

//Fade out
if state > 1 {
   if alpha > 0.1 {
      alpha -= 0.1;
      state += 0.1;
   } else {
      alpha = 0;
      state = 3;
   }
}

//Destroy when faded out
if state = 3 {
   instance_destroy();
}

//Position object procedurally
x = __view_get( e__VW.XView, global.display_view ) + (__view_get( e__VW.WView, global.display_view )*0.5);
y = __view_get( e__VW.YView, global.display_view ) + (__view_get( e__VW.HView, global.display_view )*0.5);


//Position object procedurally
x = __view_get( e__VW.XView, global.display_view ) + (__view_get( e__VW.WView, global.display_view )*0.5);
y = __view_get( e__VW.YView, global.display_view ) + __view_get( e__VW.HView, global.display_view ) - (sprite_height*3) - 96;

//Create demo objects when clicked
if create > 0 {

   //Grid
   if create == 1 {
      instance_create(__view_get( e__VW.XView, global.display_view )+(__view_get( e__VW.WView, global.display_view )*0.5),__view_get( e__VW.YView, global.display_view )+(__view_get( e__VW.HView, global.display_view )*0.5),obj_grid);
      create += 1;
      exit;
   }
   
   //Linked objects
   if create == 2 {
      instance_create(obj_grid.x-96,obj_grid.y-96,obj_linked);
      create += 1;
      exit;
   }
   
   if create == 3 {
      instance_create(obj_grid.x,obj_grid.y-96,obj_linked);
      create += 1;
      exit;
   }
   
   if create == 4 {
      instance_create(obj_grid.x+96,obj_grid.y-96,obj_linked);
      create += 1;
      exit;
   }
   
   if create == 5 {
      instance_create(obj_grid.x-96,obj_grid.y,obj_linked);
      create += 1;
      exit;
   }
   
   if create == 6 {
      instance_create(obj_grid.x,obj_grid.y,obj_linked);
      create += 1;
      exit;
   }
   
   if create == 7 {
      instance_create(obj_grid.x+96,obj_grid.y,obj_linked);
      create += 1;
      exit;
   }
   
   if create == 8 {
      instance_create(obj_grid.x-96,obj_grid.y+96,obj_linked);
      create += 1;
      exit;
   }
   
   if create == 9 {
      instance_create(obj_grid.x,obj_grid.y+96,obj_linked);
      create += 1;
      exit;
   }
   
   if create == 10 {
      instance_create(obj_grid.x+96,obj_grid.y+96,obj_linked);
      create += 1;
      exit;
   }
   
   //Moving objects
   if create == 11 {
      instance_create(__view_get( e__VW.XView, global.display_view )+(__view_get( e__VW.WView, global.display_view )*0.1),__view_get( e__VW.YView, global.display_view )+(__view_get( e__VW.HView, global.display_view )*0.25),obj_movable);
      create += 1;
      exit;
   }
   
   if create == 12 {
      instance_create(__view_get( e__VW.XView, global.display_view )+(__view_get( e__VW.WView, global.display_view )*0.3),__view_get( e__VW.YView, global.display_view )+(__view_get( e__VW.HView, global.display_view )*0.75),obj_movable);
      create += 1;
      exit;
   }
   
   if create == 13 {
      instance_create(__view_get( e__VW.XView, global.display_view )+(__view_get( e__VW.WView, global.display_view )*0.5),__view_get( e__VW.YView, global.display_view )+(__view_get( e__VW.HView, global.display_view )*0.9),obj_movable);
      create += 1;
      exit;
   }
   
   if create == 14 {
      instance_create(__view_get( e__VW.XView, global.display_view )+(__view_get( e__VW.WView, global.display_view )*0.7),__view_get( e__VW.YView, global.display_view )+(__view_get( e__VW.HView, global.display_view )*0.1),obj_movable);
      create += 1;
      exit;
   }
   
   if create == 15 {
      instance_create(__view_get( e__VW.XView, global.display_view )+(__view_get( e__VW.WView, global.display_view )*0.9),__view_get( e__VW.YView, global.display_view )+(__view_get( e__VW.HView, global.display_view )*0.4),obj_movable);
      create += 1;
      exit;
   }
   
   //Destroy menu objects
   if create == 16 {
      with(obj_help) {
         instance_destroy();
      }

      with(obj_banner) {
         instance_destroy();
      }
   
      with(obj_quit) {
         state = 2;
      }   

      instance_destroy();
   }
}


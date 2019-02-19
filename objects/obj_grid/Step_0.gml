//Follow mouse when selected
if selected = true {
   x = mouse_x;
   y = mouse_y;
}

//Align to a grid
move_snap(48,48);

//Link child objects to self
move_link(obj_linked, true, true);

//Set scaling limits
image_xscale = clamp(image_xscale,0.06,5);
image_yscale = clamp(image_yscale,0.06,5);


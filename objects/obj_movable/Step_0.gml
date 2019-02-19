//Count down the delay
delay -= 1;

//Move left or right depending on the direction variable
if direction = 1 {
   x -= 1;
}
if direction = 2 {
   x += 1;
}

//When delay hits 0, switch directions and reset the delay
if delay = 0 {
   if direction = 1 {
      direction = 2;
      delay = (room_speed*3);
      exit;
   }
   if direction = 2 {
      direction = 1;
      delay = (room_speed*3);
      exit;
   }
}

var __b__;
__b__ = action_if_variable(selected, true, 0);
if __b__
{
{
x = mouse_x;
y = mouse_y;
}
}

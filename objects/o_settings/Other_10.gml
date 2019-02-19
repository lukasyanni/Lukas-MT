/// @description Switch BGM and SFX values, exit on exit option.
status = 1;
switch (index)
{
  case 0:
    bgm = !bgm;
    break;
  case 1:
    sfx = !sfx;
    break;
  case 4:
  if (parent != noone) { parent.status = 1; }
    instance_destroy();
    break;
}


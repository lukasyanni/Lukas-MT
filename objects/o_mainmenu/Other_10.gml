/// @description Example of nested menus.
switch (index)
{
  case 0:
    child = menu_create(o_newgame, x + 16, y + 16, 0, 0);
    break;
  case 1:
    child = menu_create(o_loadgame, x + 16, y + 16, 0, 0);
    break;
  case 2:
    child = menu_create(o_settings, x + 16, y + 16, 0, 0);
    break;
  case 3:
    game_end();
    break;
}


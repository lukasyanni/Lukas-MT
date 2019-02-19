for (var n = 0; n < ds_list_size(list); n++)
{
  with (list[| n]) { instance_destroy(); }
}
ds_list_destroy(list);
font_delete(font);


var crew = argument0;
var side = sign(x - crew.x);

//var menu = instance_create_layer(crew.x+(crew.sprite_width+8), crew.y-120, "Instances_Menus",crewMenu_obj);
if instance_exists(crew_textbox_obj) instance_destroy(crew_textbox_obj);
var tb = crew_textbox_create(crew, "Hello Captain!");
var menu = instance_create_layer(tb.x+tb.sprite_width/2, tb.y, "Instances_Menus",crewMenu_obj);

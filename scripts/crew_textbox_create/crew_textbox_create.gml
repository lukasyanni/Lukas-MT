var crew = argument0;

if instance_exists(crew_textbox_obj) {instance_destroy(crew_textbox_obj)}
var crewbox = instance_create_depth(crew.x,crew.y-80,object_get_depth(crew),crew_textbox_obj);

with crewbox {
	ctb_add_text(argument1);
}

crewbox.crew = crew;
crew.textbox = crewbox;
return crewbox;
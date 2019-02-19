/// @description Insert description here
// You can write your code in this editor
if (instance_exists(crewGen_menu_obj)) {
	if (instance_exists(obj_textbox)) {
		instance_destroy(obj_textbox);
	}
	exit;
}
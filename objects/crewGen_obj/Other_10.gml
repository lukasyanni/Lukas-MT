/// @description Insert description here
// You can write your code in this editor

if (live_call()) return live_result;

if (instance_exists(crewGen_menu_obj)) exit;

if (!instance_exists(crewGen_menu_obj)) {
	
	event_inherited();
	
	myText[0] = "Let's get your crew together.";
	
	alarm[0] = 90;
	

	// Inherit the parent event
	
	crewMenu = instance_create_layer(x-194,y-440,"Instances_Menus",crewGen_menu_obj);
	camera_obj.subject = crewMenu;
	
	
}
/// @description Insert description here
// You can write your code in this editor

if (instance_exists(crewGen_menu_obj)) {
	exit;
}
// Inherit the parent event
event_inherited();

if instance_exists(myTextbox) {
	myTextbox.deleteType = "Hard";
}
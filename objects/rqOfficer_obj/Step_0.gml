/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();



if instance_exists(tabObj){
	if instance_exists(introEvent) {
		if keyboard_check_pressed(vk_tab) and introEvent.myTextbox.endOfText {
			objective_remove(self, tabObj);
			alarm[0] = 60;
		}
	} 
}
else {
	if instance_exists(introEvent) {
		instance_destroy(introEvent.myTextbox);
	}		
		
}
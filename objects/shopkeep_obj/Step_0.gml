/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (inv_check_supplies_ready()) {
	objective_remove(shopkeep_obj);
}


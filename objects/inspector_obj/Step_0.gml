/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (crew_check_if_ready() and inv_check_supplies_ready() and !checked) {
	objective_create(self, "Take Off from Mother Station", c_lime);
	checked = true;
}
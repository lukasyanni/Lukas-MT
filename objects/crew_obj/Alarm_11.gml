/// @description Insert description here
// You can write your code in this editor
if !instance_exists(obj_textbox) {
	var dir = irandom_range(-1,1);
	hspeed = .4*(dir);
	alarm_set(10, 180);
}
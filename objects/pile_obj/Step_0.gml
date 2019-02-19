/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (transaction) {
	create_textevent("You purchased the " + sizeText[size] + " pile of " + type + " Components.", -1);
	transaction = false;
}
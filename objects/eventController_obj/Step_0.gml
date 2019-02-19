/// @description Insert description here
// You can write your code in this editor

if room == ship_room and !instance_exists(obj_textbox) and instance_exists(CURRENT_EVENT) {
	
	if CURRENT_EVENT.music != noone {
		var fadeTime = 1000;
		audio_sound_gain(EVENT_MUSIC, 0, fadeTime);
		audio_sound_gain(BACKGROUND_MUSIC, 1, fadeTime);
		EVENT_MUSIC = noone;
	}
	
	instance_deactivate_object(CURRENT_EVENT);
	//show_error("deactivated current event", false)
}

if control_check_lose() {
	room_goto(gameOver_room);
}
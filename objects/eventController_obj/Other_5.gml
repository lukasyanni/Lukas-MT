/// @description Insert description here
// You can write your code in this editor

//Reactivate as to not lose the event objects persistance when moving rooms
instance_activate_object(event_obj);
show_debug_message("Active Instances before transition: "+string(instance_number(event_obj)));

if BACKGROUND_MUSIC != noone {
	audio_stop_sound(BACKGROUND_MUSIC);
	//audio_sound_gain(BACKGROUND_MUSIC, 0, 5000);
}
/// @description Insert description here
// You can write your code in this editor

//After completing the move, deactivate all objects but the current one
if room == mother_room {
	BACKGROUND_MUSIC = hub_theme_music;
	audio_play_sound(BACKGROUND_MUSIC, 1, true);
	audio_sound_gain(BACKGROUND_MUSIC, 0, 0);
	audio_sound_gain(BACKGROUND_MUSIC, 1, 5000);
	exit;
}
instance_deactivate_object(event_obj);
instance_activate_object(EVENTS[DAY]);

if room == ship_room {
	BACKGROUND_MUSIC = phase_1_music;
	audio_play_sound(BACKGROUND_MUSIC, 1, true);
	audio_sound_gain(BACKGROUND_MUSIC, 0, 0);
	audio_sound_gain(BACKGROUND_MUSIC, 1, 5000);
}

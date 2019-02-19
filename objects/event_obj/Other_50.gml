/// @description Insert description here
// You can write your code in this editor
if music != noone and EVENT_MUSIC == noone {
	EVENT_MUSIC = audio_play_sound(music,1,true);
	audio_sound_gain(EVENT_MUSIC, 0, 0);
	audio_sound_gain(BACKGROUND_MUSIC, 0, 5000);
	audio_sound_gain(EVENT_MUSIC, 1, 5000);
}
/// @description Insert description here
// You can write your code in this editor

globalvar MAX_DAYS;
globalvar DAY;
globalvar EVENTS;
globalvar EVENT_MUSIC;
globalvar BACKGROUND_MUSIC;
globalvar CURRENT_EVENT;
globalvar UNEVENTFUL_DAYS;

MAX_DAYS = 100;
DAY = 0;
EVENTS = [];
CURRENT_EVENT = noone;
EVENT_MUSIC = noone;
BACKGROUND_MUSIC = noone;

UNEVENTFUL_DAYS = 0;

//Generate all events to be used
for (var i = 0; i < MAX_DAYS * 3; i++) {
    EVENTS[i] = instance_create_layer(x,y,layer,event_obj);
	with EVENTS[i] {
		day = i;
		generate_random_event();
	}
}

var marsEvent = instance_create_layer(x,y,layer,event_obj);
with marsEvent {
	name = "Mars Awaits...";
	text = "You have arrived at Mars!";
	actions = ["Great! (Quit)", "Restart Game"];
	events = [
		[control_game_quit],
		[control_game_restart]
	];
	nl = [-1,-1];
}

EVENTS[array_length_1d(EVENTS)] = marsEvent;

//debugging
_load = 0;
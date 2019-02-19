/// @description Insert description here
// You can write your code in this editor

//show_debug_message("Active Events: "+string(instance_number(event_obj)));

instance_deactivate_object(event_obj);
instance_activate_object(EVENTS[DAY]);

CURRENT_EVENT = EVENTS[DAY];
var eve = EVENTS[DAY];

if (eve.actions != noone) {
	
	eve.active = true;
	
	//Get odds text/scripts if needed
	var oddsScripts = [control_cancel];
	var oddsNl = [-1];
	if eve.type == "rco" {
		var oddsNl = eve.nl;
		oddsNl[2] = 1;
		var oddsScripts = eve.events;
		oddsScripts[array_length_1d(oddsScripts)] = [control_cancel];
	}
	
	//Create Text Event
	with (ai_obj) {
		create_textevent(
		[
		"Urgent Message Incoming...", eve.text, eve.actions, event_calculate_odds(eve), "End of Input"
		],
		[ai_obj,eve.speaker,eve.speaker,eve.speaker,ai_obj],
		-1,
		-1,
		[0,0,1,1,0],
		[1,2,eve.nl,oddsNl,-1],
		[
			[control_cancel],
			[control_cancel],
			eve.events,
			oddsScripts,
			[control_cancel]
		]
		)
	}
	if instance_exists(camera_obj) {
		camera_obj.subject = eve;
	}
}

DAY++;

if room == ship_room and !live_enabled {
	game_save("save.dat");
}

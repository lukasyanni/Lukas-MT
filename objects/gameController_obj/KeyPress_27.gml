/// @description Insert description here
// You can write your code in this editor

//Opens quit prompt
if !instance_exists(quitPrompt) and !instance_exists(obj_textbox) {
	
	var narrator = noone;
	if room == mother_room {
		narrator = rqOfficer_obj;
	}
	else if room == ship_room {
		narrator = ai_obj;
	} else {
		exit;
	}
	
	// Saving currently doesn't work outside of the ship room
	if room != ship_room {
		with (player_obj) {
			other.quitPrompt = create_textevent(["Are you sure you want to quit?", ["Yes","No"]], [narrator,narrator],
			-1,-1,
			[0,1],[0,[-1,-1]],
			[
				[control_cancel],
				[
					//Save and Quit
					[control_game_quit],
					//Cancel
					[control_cancel]
				]
			]
			)
	
		}
	} else {
	
	
		//show_error("creating quit prompt", false);
		with (player_obj) {
			other.quitPrompt = create_textevent(["What would you like to do?", ["Save and Quit","Reset Game","Cancel"]], [narrator,narrator],
			-1,-1,
			[0,1],[0,[-1,-1,-1]],
			[
				[control_cancel],
				[
					//Save and Quit
					[control_game_quit],
					//Reset
					[control_game_restart],
					//Cancel
					[control_cancel]
				]
			]
			)
	
		}
	}
}
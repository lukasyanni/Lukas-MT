/// @description Insert description here
// You can write your code in this editor

create_textevent(
	[
		"Your ship has taken critical damage and you have lost...",
		"Game Over", 
		["Quit", "Restart Game"]
	], ai_obj,-1,-1,
	[0,0,1],
	[
		0,
		0,
		[-1,-1]
	],
	[
		[control_cancel],
		[control_cancel],
		[
			[control_game_quit],
			[control_game_restart]
		]
	]
);

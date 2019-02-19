

//system odds
var searchSystem = argument0;
var searchOdds = 7;
var avoidSystem = argument1;
var avoidOdds = 5;


//set in event object
actions = ["Search","Avoid","Tell me the odds..."];
nl = [-1,-1,3];
type = "rco";
events = [
	
	// Search
	[
		event_rco, actions[0], [
			searchSystem, searchOdds,
			[
				search_neutral_text,
				search_success_text,
				search_fail_text
			]
		],
		resource
	],
		
	// Avoid
	[
		event_rco, actions[1], [
			avoidSystem, avoidOdds, 
			[
				avoid_success,
				avoid_fail
			]
		]
	],
	
	//Tell me the odds...
	[control_cancel]
];
var crew = argument0;
var sub = argument1;
var resources = argument2;
var type = "None";
var prof = "None";

switch(sub.name) {
	case "Physical":
		type = global.Physical;
		prof = crew.pProf;
		break;
	case "Electrical":
		type = global.Electrical;
		prof = crew.eProf;
		break;
	case "Computerized":
		type = global.Computerized;
		prof = crew.cProf;
		break;
}

if resources > type {
	//dont create the text event if auto-triggered
	if argument_count > 3 {
		if argument3 == true {
			return;
		}
	}
	
	//Create new prompt
	instance_destroy(obj_textbox);
	return create_textevent("We don't have enough resources for that!",[crew]);
}

// if we have enough resources, prep the repair and ask player to confirm

var repTime = crew_estimate_repair(prof, abs(sub.maxHp-sub.hp), resources);

show_debug_message("Returning repTime: "+string(repTime));

// check if auto triggered and auto-run if so
if argument_count > 3 {
	if argument3 == true {
		return crew_repair_sub_start(crew, repTime, sub, resources);
	}
}

// Prompt for confirmation
instance_destroy(obj_textbox);
create_textevent(
	[
		"Using "+
		string(resources)+" "+
		sub.name+" resources, I estimate it will take me " + string(repTime) + 
		" days to repair the " + sub.name + " Subsystems in the " + crew.sys.name + 
		". Do you want to continue?",
		["Yes","No"]
	],
	[crew,crew],
	-1,-1,[0,1],
	[0,[-1,-1]],
	[
		[control_cancel],
		[
			//Yes
			[crew_repair_sub_start, crew, repTime, sub, resources],
			//No
			[control_cancel]
		]
	]
	);





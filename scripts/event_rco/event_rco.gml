
//Search,Avoid
var action = argument0;
var eventStrings = [];
var eventSpeakers = [];
var eventSound = noone;
var outcome = "neutral";

with obj_textevent {
	instance_destroy(myTextbox);
	instance_destroy();
}

with eventController_obj {
	event_user(1);
}

event_obj.active = false;

switch (action) {
    
	case "Search":
	
		//obj: system,roll,text
		var searchObj = argument1;
		var compType = argument2;
		var searchText = searchObj[2];
		var sysCheck = mecs_system_check(searchObj[0]);
        
		//Neutral
		if (sysCheck == searchObj[1]) {
			eventStrings[0] = searchText[0];
			eventSpeakers[0] = ai_obj;
		}
		
		//Success
		else if sysCheck > searchObj[1] {
			var comps = choose(1,2,3);
			compType = components_add(compType,comps);
			
			eventStrings[0] = "We were able to salvage "+string(comps)+ " " + compType + " Components "+searchText[1];
			eventSpeakers[0] = ai_obj;
			eventSound = event_pass_sfx;
			outcome = "success";
		}
		
		//Failure
		else {
			var damVals = mecs_damage_random(irandom_range(1,3));
			
			eventStrings[0] = searchText[2]+" causing Severity "+damVals[2]+" damage to the "+damVals[1]+" Subsystems in the "+damVals[0]+" area.";
			eventSpeakers[0] = ai_obj;
			eventSound = event_fail_sfx;
			outcome = "failure";
		}
        break;
	
	case "Avoid":
		
		//obj: system,roll,text
		var avoidObj = argument1;
		var avoidText = avoidObj[2];
		var sysCheck = mecs_system_check(avoidObj[0]);
		
		//Success
		if (sysCheck >= avoidObj[1]) {
			
			eventStrings[0] = avoidText[0];
			eventSpeakers[0] = ai_obj;
			eventSound = event_pass_sfx;
			
			outcome = "success_avoid";

		}
		
		//Failure
		else {
			var damVals = mecs_damage_random(irandom_range(1,3));
			
			eventStrings[0] = avoidText[1]+" causing Severity "+damVals[2]+" damage to the "+damVals[1]+" Subsystems in the "+damVals[0]+" area.";
			eventSpeakers[0] = ai_obj;
			eventSound = event_fail_sfx;
			
			outcome = "failure_avoid";
		}
		
		break;
}

//Get Banter
var banterObj = event_generate_banter(eventStrings, eventSpeakers, outcome, "rco");
eventStrings = banterObj[0]; eventSpeakers = banterObj[1];

// Generate conclusion event
if eventSound != noone {
	audio_play_sound(eventSound,1,false);
}
create_textevent(eventStrings,eventSpeakers);

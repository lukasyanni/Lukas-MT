/// @description Insert description here
// You can write your code in this editor

if (live_call()) return live_result;

// Inherit the parent event
event_inherited();

if instance_exists(sys) {
	x = sys.x - 32;
	y = sys.y;
}

//This switch is likely obsolete
switch (string_char_at(special, 0)) {
    case "M":
        myColorNumber = 4;
        break;
	case "E":
        myColorNumber = 2;
        break;
	case "C":
        myColorNumber = 3;
        break;
	case "S":
        myColorNumber = 1;
        break;
    default:
        myColorNumber = 0;
        break;
}

// start repair if autorepair enabled and system is damaged
if AUTOREPAIR and repairDate == noone and state == "Active" {
	var damCheck = subsystem_get_damaged(sys);
	var sub = damCheck[2];
	var recNum = 3;
	
	if damCheck[3] {
		
		//TODO: Add check to see if enough resources before starting the auto repair
		
		//Start repair
		crew_repair_sub(id, sub[0], recNum, true);
	}
}

if keyboard_check_pressed(vk_delete) {
	show_debug_message("repairDate for "+name+": "+string(repairDate));
}

// Trigger Repair
if repairDate != noone and state == "Repair" and DAY >= repairDate and !instance_exists(obj_textbox) {
	event_user(1);
}
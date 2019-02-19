var sys = argument0;
var crew = argument1;

crew.x = sys.x;
crew.y = sys.y;

crew.sys = sys;


/*

if crew.sys[? "name"] == newSys {
	moveText = "I'm already here, captain...";
	return moveText;
}

var path = noone;
crew.state = "Moving";

if newSys == "Medbay" {
	
	moveText = "Medbay? Sick.";
	
	//Move from current system to MEDBAY
	if crew.sys[? "name"] == "Engines" {
		path = path_m2e;
		path_rotate(path, 180);
	} else if crew.sys[? "name"] == "Comms" {
		path = path_m2c;
		path_rotate(path, 180);
	} else if crew.sys[? "name"] == "Systems" {
		path = path_m2s;
		path_rotate(path, 180);
	}
	
}

else if newSys == "Engines" {

	moveText = "Engines? About time!";
	
	//Move from current system to ENGINES
	if crew.sys[? "name"] == "Medbay" {
		path = path_m2e;
	} else if crew.sys[? "name"] == "Comms" {
		path = path_e2c;
		path_rotate(path, 180);
	} else if crew.sys[? "name"] == "Systems" {
		path = path_s2e;
	}
	
}

else if newSys == "Comms" {
	moveText = "Comms? Tell me about it.";
	
	//Move from current system to COMMS
	if crew.sys[? "name"] == "Medbay" {
		path = path_m2c;
	} else if crew.sys[? "name"] == "Engines" {
		path = path_e2c;
	} else if crew.sys[? "name"] == "Systems" {
		path = path_s2c;
	}
	
}

else if newSys == "Systems" {
	moveText = "Systems, here I go!";
	
	//Move from current system to SYSTEMS
	if crew.sys[? "name"] == "Medbay" {
		path = path_m2s;
	} else if crew.sys[? "name"] == "Engines" {
		path = path_e2s;
	} else if crew.sys[? "name"] == "Comms" {
		path = path_s2c;
		path = path_rotate(path, 180);
	}
	
}

crew.sys = mecs_get_by_name(newSys);
crew.path = path;
with crew {
	path_start(crew.path, 6, path_action_stop, true);
}

return moveText;
*/
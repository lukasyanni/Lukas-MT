var crew = argument0;
var repTime = argument1;
var sub = argument2;
var resources = argument3;

//show_error("Starting repair", false);
crew.state = "Repair";
crew.repairDate = DAY + repTime * 3;
crew.repairSubsystem = sub;

switch(sub.name) {
	case "Physical":
		global.Physical -= resources;
		break;
	case "Electrical":
		global.Electrical -= resources;
		break;
	case "Computerized":
		global.Computerized -= resources;
		break;
}



return;
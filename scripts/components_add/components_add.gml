/// @description adds PECs components to inventory
/// @param P/E/C/M
/// @param int
var type = "";
switch (argument0) {
    case "P":
        global.Physical += argument1;
		type = "Physical";
        break;
	case "E":
        global.Electrical += argument1;
		type = "Electrical";
        break;
	case "C":
        global.Computerized += argument1;
		type = "Computerized";
        break;
	case "M":
        global.Medical += argument1;
		type = "Medical";
        break;
	case "CRED":
        global.Credits += argument1;
		type = "Credits";
        break;
}
return type;
//show_debug_message("Physical: "+string(global.Physical));




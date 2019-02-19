
var crew = instance_create_layer(x,y,"Layer_Crew",crew_obj);

with (crew) {
	//name = argument0;
	sys = argument0;
	special = sys.name;
	state = "Active";
	//myName = name;
}

return crew;
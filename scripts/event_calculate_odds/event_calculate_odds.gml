var eve = argument0;

var acts = [];
var sys = [];
var text = [];

if array_length_1d(eve.systems) < 1 {
	return text = ["Not Needed"];
}

for (var i=0; i<array_length_1d(eve.actions)-1; i++) {
	acts[i] = eve.actions[i];
	sys[i] = eve.systems[i];
}



for (var i=0; i<array_length_1d(acts); i++) {
	
	var odds = mecs_system_check(sys[i], true);
	
	switch(odds) {
		case 1:
			odds = "Low chance";
			break;
		case 2:
			odds = "High chance";
			break;
		default:
			odds = "No chance";
			break;
	}
	text[i] = acts[i]+": "+odds;
}

text[array_length_1d(eve.actions)-1] = "Back";

show_debug_message("ODDS TEXT: ");
show_debug_message(text);

return text;
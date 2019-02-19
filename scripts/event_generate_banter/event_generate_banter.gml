

var eveText = argument0;
var eveSpeakers = argument1;
var outcome = argument2;
var type = argument3;

var banter = [];
var speakers = [];

if type == "rco" {

	switch(outcome) {
		case "success":
			banter = [
				"I can't believe we won!",
				"Some more banter text",
				"YAY!"
			];
			speakers = [
				CREW[irandom_range(0,3)],
				CREW[irandom_range(0,3)],
				CREW[irandom_range(0,3)]
			]
			
		break;
		case "failure":
			//
		break;
		case "neutral":
			//
		break;
	}
}


for (var i=0; i<array_length_1d(banter); i++) {
	eveText[i+1] = banter[i];
	eveSpeakers[i+1] = speakers[i];
}

return [eveText,eveSpeakers]



// TEXT VALUES - Defined here for easy editing on-the-fly
name = "Derilict Probe";

// Popup text when the event is triggered
text = choose(
	"Captain, a solar flare damaged one of our subsystems. We should probably investigate the ship to make sure the damage wasn't too serious."
);


// init event
speaker = CREW[irandom_range(0,3)];
sprite = event_solar_flare_spr;
actions = ["OK"];
events = [
	[mecs_damage_random, irandom_range(1,2)]
];

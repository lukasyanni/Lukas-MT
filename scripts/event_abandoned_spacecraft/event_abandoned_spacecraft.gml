


// TEXT VALUES - Defined here for easy editing on-the-fly
name = "Abandoned Spacecraft";

// Popup text when the event is triggered
text = choose(
	"Captain, we spotted an abandoned spacecraft. Should we get closer and search for resources?",
	"There's an empty spacecraft up ahead. What do you want to do captain?"
);

// Possible text returns when successfully searching
search_neutral_text = "After investigating the ship, no salvageable materials could be found."
search_success_text = /*We were able to salvage (number) of (type) resources*/ "from the spacecraft."
search_fail_text = "While investigating the ship, there was an accident," //causing damage (etc)...

// Possible text returns when successfully avoiding
avoid_success = "We were able to avoid the ship."
avoid_fail = "We were unable to avoid the ship," //causing damage (etc)...


/*--
Don't touch any code below this!
--*/

// init asteroid event
speaker = CREW[irandom_range(0,3)];
sprite = event_spacecraft_spr;
resource = "E";
systems = [systems_obj, engines_obj];

// Get Event Object
event_rco_init(systems_obj, engines_obj);
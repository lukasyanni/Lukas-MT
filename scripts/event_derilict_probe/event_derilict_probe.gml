

/* PROBE EVENT */


// TEXT VALUES - Defined here for easy editing on-the-fly
name = "Derilict Probe";

// Popup text when the event is triggered
text = choose(
	"Captain, we spotted a derilict probe. Should we get closer and search for resources?",
	"There's a broken probe up ahead. What do you want to do captain?"
);

// Possible text returns when successfully searching
search_neutral_text = "After investigating the probe, no salvageable materials could be found."
search_success_text = /*We were able to salvage (number) of (type) resources*/ "from the probe."
search_fail_text = "While investigating the probe, there was an accident," //causing damage (etc)...

// Possible text returns when successfully avoiding
avoid_success = "We were able to avoid the probe."
avoid_fail = "We were unable to avoid the probe," //causing damage (etc)...


/*--
Don't touch any code below this!
--*/

// init event
speaker = CREW[irandom_range(0,3)];
sprite = event_probe_spr;
resource = "C";
systems = [comms_obj, engines_obj];

// Get Event Object
event_rco_init(comms_obj, engines_obj);
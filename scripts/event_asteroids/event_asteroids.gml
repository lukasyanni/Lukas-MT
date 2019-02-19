


// TEXT VALUES - Defined here for easy editing on-the-fly
name = "Asteroid Field";

// Popup text when the event is triggered
text = choose(
	"Best keep a good distance, we can't afford to repair the damage it could cause.",
	"If we can land on that rock, it might have some resources. Prep the landing team?",
	"I'm picking up strong magnetic fields out of that rock, it might be very valuable if we harvest carefully.",
	"Asteroids... Where there’s one there’s usually a dozen more. Keep an eye on the radar..."
);

// Possible text returns when successfully searching
search_neutral_text = "After investigating the asteroid, no salvageable materials could be found."
search_success_text = /*We were able to salvage (number) of (type) resources*/ "from the asteroid."
search_fail_text = "While investigating the asteroid, there was an accident," //causing damage (etc)...

// Possible text returns when successfully avoiding
avoid_success = "We were able to avoid the asteroid."
avoid_fail = "We were unable to avoid the asteroid," //causing damage (etc)...


/*--
Don't touch any code below this!
--*/

// init asteroid event
speaker = CREW[irandom_range(0,3)];
sprite = event_asteroid_spr;
resource = "P";
systems = [engines_obj, engines_obj];

// Get Event Object
event_rco_init(engines_obj, engines_obj);
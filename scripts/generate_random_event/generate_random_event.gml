

var roll = irandom_range(1,40);

if UNEVENTFUL_DAYS < 3 {
	roll = false;
}

//debugging
//roll = choose(12,13,14,15);

switch (roll) {
	case 12:
		event_derilict_probe();
		break;
	
	case 13:
		event_asteroids();
		break;
	
	case 14:
		event_abandoned_spacecraft();
		break;
	
	case 15:
		event_catvid();
		break;
	
	case 16:
		event_solar_flare();
		break;
	
	case 17:
		event_em_disturbance();
		break;
	
	case 18:
		event_static_interference();
		break;
	
	case 19:
		name = "Annoying Sound Stopped/Started";
		text = "Annoying Sound Stopped/Started Text";
		actions = ["OK"];
		break;
		
		
	default:
		name = "Uneventful Day";
		text = "Another day passes by...";
		UNEVENTFUL_DAYS++;
		break;
}

//reset uneventful counter
if name != "Uneventful Day" {
	UNEVENTFUL_DAYS = 0;
}
var rm = argument0;

if (is_undefined(rm)) {
	room_goto_next();
}
else if (rm == -1) {
	room_goto_previous();
}
else {
	if room_exists(rm) {
		room_goto(rm);
	}
}
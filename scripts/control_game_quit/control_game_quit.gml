
//Save game

if instance_exists(obj_textbox) {
	instance_destroy(obj_textbox);
}

if room == ship_room and !live_enabled {
	game_save("save.dat");
}

/*
ini_open("save.ini");

for (var i=0; i<array_length_1d(CREW); i++) {
	ini_write_string("Crew "+string(i+1),"name",CREW[i].name);
}

ini_close();
*/

//Use OOB simple GM saving/loading functions
game_end();

return;
for (var i=0; i<array_length_1d(CREW); i++) {
	if (CREW[i].name == "" or crew_get_total_pecs(CREW[i]) < 2) {
		return false;
	}
}

return true;

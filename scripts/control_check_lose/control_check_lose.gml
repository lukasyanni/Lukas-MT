

if room != ship_room {
	return false;
}

var totalDamSys = 0;

for (var i=0; i<array_length_1d(MECS); i++) {
	var damCount = 0;
	if MECS[i].p.hp < MECS[i].p.maxHp {
		damCount++;
	}
	
	if MECS[i].e.hp < MECS[i].e.maxHp {
		damCount++;
	}
	
	if MECS[i].c.hp < MECS[i].c.maxHp {
		damCount++;
	}
	
	if damCount > 1 {
		totalDamSys++;
	}
}

return totalDamSys > 2;
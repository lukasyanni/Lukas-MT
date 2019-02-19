
var system = argument[0];

var getMecsScore = false;
if argument_count > 1 {
	getMecsScore = argument[1];
}

var mecProf = 0;
var total = 0;

show_debug_message("Starting System Check for "+system.name);

//Get MECS Profeciency
var brokenSubs = 0;
if system.p.hp < system.p.maxHp brokenSubs++;
if system.e.hp < system.e.maxHp brokenSubs++;
if system.c.hp < system.c.maxHp brokenSubs++;

if brokenSubs == 0 {
	mecProf++;
} else if brokenSubs > 1 {
	mecProf--;
}

show_debug_message("Broken Subsystems: "+string(brokenSubs));
show_debug_message("Mec Prof 1: "+string(mecProf));

//Check for manned bonus
for (var i=0; i<array_length_1d(CREW); i++) {
	if CREW[i].sys == system 
	and CREW[i].state == "Active" 
	and CREW[i].special == system.name {
		mecProf++;
	}
}

show_debug_message("Mec Prof 2: "+string(mecProf));

if mecProf < 1 {
	return 0;
}

repeat(mecProf) {
	total += irandom_range(1,6);
}

//TODO: Subtract crew effeciency modifier

show_debug_message("Total: "+string(total));
if !getMecsScore {
	return total;
} else {
	return mecProf;
}
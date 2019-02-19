
var damage = argument0;

//get undamaged subsystem from a random system
var sub = noone;
var damSys = [];
var i=0;

while (sub == noone) {
	//var roll = irandom_range(0,3);
	var sys = choose(medbay_obj,engines_obj,comms_obj,systems_obj);
	sub = subsystem_get_random(sys);
	
	if array_length_1d(damSys) > 3 {
		break;
	}
	
	//Make sure an undamaged system exists
	if sub.hp != sub.maxHp {
		if array_length_1d(damSys) == 0 {
			damSys[0] = sys;
		} else {
			var inList = false;
			for (var j=0; j<array_length_1d(damSys); j++) {
				if damSys[j] == sys {
					inList = true;
				}
			}
			if !inList {
				damSys[array_length_1d(damSys)] = sys;
			}
		}
		//restart while loop
		sub = noone;
	}
	
}

sub.hp -= damage;

with sub {
	effect_create_above(ef_spark,x,y,2,c_yellow);
}

return [sys.name, sub.name, string(damage)];

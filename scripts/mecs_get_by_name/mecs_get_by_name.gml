var _name = argument0;
for (var i=0; i<array_length_1d(MECS); i++) {
	var m = MECS[i];
	if _name == m[? "name"] {
		return m;
	}
}
return false;
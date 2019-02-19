var m = argument0;

var i = 0;
var subs = [];
var index = [];

if m.p.hp < m.p.maxHp {
	subs[i] = m.p;
	index[i] = 7;
	i++;
}

if m.e.hp < m.e.maxHp {
	subs[i] = m.e;
	index[i] = 8;
	i++;
}

if m.c.hp < m.c.maxHp {
	subs[i] = m.c;
	index[i] = 9;
	i++;
}

var str = [];
var nl = [];

for (var i=0; i<array_length_1d(subs); i++) {
	str[i] = subs[i].name;
	nl[i] = index[i];
}

var l = array_length_1d(subs);
str[l] = "Back";
nl[l] = 2;

//show_debug_message(str);
//show_debug_message(nl);

return [str,nl,subs,i>0];




/*
var r = [];
	var r_nl = [];
	for (var j=1; j<=global.Computerized and j<=5; j++) {
		r[j] = string(j);
		r_nl[j] = -1;
	}
	
	var r_l = array_length_1d(r); 
	
	r[r_l] = "Back";
	r_nl[r_l] = 2;
	
	numResources[i] = r;
	numNls[i] = r_nl;
*/
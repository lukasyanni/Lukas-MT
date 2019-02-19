
var system = argument0;

var str = "";
var m = system;
var n = m[? "name"];
var s = m[? "subs"];
str += n+"\n";
	
var sub = ds_map_find_first(s);
sub = sub[? "subs"];
var key = ds_map_find_first(sub);
while key != undefined {
	var sys = sub[? key];
	str += "   "+sys[? "name"]+"\n";
	key = ds_map_find_next(sub, key);
}
str += "\n";
return str;

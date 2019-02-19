
var dir = "none";
var keys = [vk_left,vk_right,vk_up,vk_down];

var numPressed = 0;
for (var i=0; i<array_length_1d(keys); i++) {
	numPressed += keyboard_check(keys[i]);
}

/*
if numPressed > 1 {
	return "none";
}
*/

if keyboard_check(vk_left) and dir == "none" {
	dir = "left";
	return dir;
}

else if keyboard_check(vk_right) and dir == "none" {
	dir = "right";
	return dir;
}

if keyboard_check(vk_up) and dir == "none" {
	dir = "up";
	return dir;
}

else if keyboard_check(vk_down) and dir == "none" {
	dir = "down";
	return dir;
}

return dir;
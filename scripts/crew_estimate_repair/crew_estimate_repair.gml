var prof = argument0;
var damage = argument1;
var resources = argument2;
var days = 0;

days = (10*damage)/(2*prof+resources);
days *= 10;
days = floor(ceil(days*5)/5);
days /= 10;
//show_debug_message("setting repair date to "+string(DAY) + " + " + string_format(repTime,1,2));

days = clamp(days,1,99);

show_debug_message("setting repair date to "+string(DAY) + " + " + string(days));

return days;
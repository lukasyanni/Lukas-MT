if (uiMouseHandle==false) || (uiEnabled==false) || (uiVisible==false) exit;

event_inherited();

with (ui_defaults) {uiMouseHandle=false};  //disable all mouse controls on other events

//no event object so we do standard get_string_async
if (uiEventObject == noone) {
	if uiGetNumber==false {
		uitextboxmsg = get_string_async(uiTextLabel,"" + string_replace_all(uiTextValue,"#","\\#"));
	} else {
		uitextboxmsg = get_integer_async(uiTextLabel,uiTextValue);
	}
} else {
    var evNum;
    evNum=uiEventNum;
	if object_exists(uiEventObject) {
		with (uiEventObject) {
			if (evNum >= 0) {
				event_user(evNum);
			}
		}
	}
}



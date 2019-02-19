
//Trigger Game Over

instance_deactivate_all(true);
instance_activate_object(eventController_obj);
instance_activate_object(ai_obj);

with eventController_obj {
	event_user(9);
}
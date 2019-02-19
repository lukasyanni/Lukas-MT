
/// @param object  Object that objective is pointing to
/// @param id (opt)	   Object ID of the objective to remove

if !instance_exists(objective_obj) return;

for (var i = 0; i < instance_number(objective_obj); i += 1) {
	var o = instance_find(objective_obj,i);
	if o.objective == argument[0] {
		

		if (argument_count > 1 and instance_exists(argument[1])) {
			//x_gui_update_alertbox("Objective Complete!");
			audio_play_sound(snd_moveselect,1,false);
			instance_destroy(argument[1]);
			return;
		}
		
		
		//x_gui_update_alertbox("Objective Complete!");
		instance_destroy(o);
		audio_play_sound(snd_moveselect,1,false);
	}
}

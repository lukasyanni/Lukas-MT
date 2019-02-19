
/// @param object  Object to point to
/// @param text    String of objective text
/// @param color   GM Color of arrow (default c_white)
/// @param [show]    Show/Hide

if (!instance_exists(player_obj)) return;

var obj = instance_create_layer(player_obj.x,player_obj.y,"Instances_GUI", objective_obj);

obj.objective = argument[0];
obj.text = argument[1];
obj.color = argument[2];

if (argument_count > 3) {
	obj.show = argument[3];
} else {
	obj.show = true;
}

gameController_obj.objAlpha = 5;

//if instance_exists(GUI_alertbox)
	//x_gui_update_alertbox("Objectives Updated");

return obj;


/// @description Insert description here
// You can write your code in this editor

if keyboard_check(vk_delete) {
	var ar = [medbay_obj,engines_obj,comms_obj,systems_obj];
	for (var i=0; i<array_length_1d(ar); i++) {
		draw_text(20,view_hport[0]-100*(i+1),string(ar[i].p.hp));
		draw_text(80,view_hport[0]-100*(i+1),string(ar[i].e.hp));
		draw_text(120,view_hport[0]-100*(i+1),string(ar[i].c.hp));
	}
}

#region Objective GUI

if (instance_exists(objective_obj)) {

	draw_set_color(c_black);
	draw_set_valign(fa_top);
	draw_set_font(fnt_dialogue_small);
	draw_set_halign(fa_left);

	//Fade objective GUI in/out
	//t creates a delay before fading out
	if keyboard_check(vk_tab) or t == 30 { 
		objAlpha = 3;
		t = 30;
	} 

	if t == 0 {
		objAlpha -= .03;
	}

	if objAlpha >= 1
		t--;

	
	t = clamp(t, 0, 60);

	draw_set_alpha(objAlpha);

	draw_rectangle(10,10,800,30+(string_height("W")*instance_number(objective_obj)),false);

	for (var i = 0; i < instance_number(objective_obj); i += 1) {
		global.Objectives[i] = instance_find(objective_obj,i);
		if(!global.Objectives[i].show) {
			continue;
		}
		draw_set_color(global.Objectives[i].color);
		draw_text(20, 20 + (string_height(global.Objectives[i].text)*i), global.Objectives[i].text);
	}
}
#endregion

#region Time GUI

if (room == ship_room) {
	draw_set_color(c_black);
	draw_rectangle(400,10,600,40,false);
	draw_set_color(c_white);
	draw_set_font(f_normal);
	
	var tStr = "";
	switch(DAY%3) {
		case 0:
			tStr = "Morning";
			break;
		case 1:
			tStr = "Afternoon";
			break;
		case 2:
			tStr = "Evening";
			break;
	}
	
	var dStr = "DAY "+string(floor(DAY/3)) + " - " + tStr;
	draw_text(480,20,dStr);
}

#endregion

//Reset
draw_set_alpha(1);
draw_set_color(c_white);
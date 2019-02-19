/// @description Insert description here
// You can write your code in this editor

if (live_call()) return live_result;

// Inherit the parent event
event_inherited();

if (InputText_obj.m_editing) exit;

//Delete all menu items to free memory
if (keyboard_check_pressed(vk_escape)) {
	if (instance_exists(obj_textbox)) {
		instance_destroy(obj_textbox);
	}
	camera_obj.subject = player_obj;
	with (ui_defaults) {
		if uiAnchor == other.id {
			instance_destroy();
		}
	}
	with (InputText_obj) {
		instance_destroy();
	}
	instance_destroy();
	exit;
}

crewSelected = CREW[crewMenu.itemindex];
points = 2 - (crewSelected.pProf+crewSelected.eProf+crewSelected.cProf);
points = clamp(points, 0, 2);

for (var i = 0; i < 3; i++) {
	var btn = pecBtns[i];
	for (var j=0; j<3; j++) {
		with (btn[j]) {
			uiMax = other.points+uiValue;
			uiInterval = 1;
		}
	}
}

if (keyboard_check_pressed(vk_right) || keyboard_check_pressed(vk_rshift)) 
&& crewMenu.itemindex < array_length_1d(crewMenu.items)-1 {
	crewMenu.itemindex++;
}

else if (keyboard_check_pressed(vk_left)|| keyboard_check_pressed(vk_lshift)) 
&& crewMenu.itemindex > 0 {
	crewMenu.itemindex--;
}


var pecLabels = ["P","E","C"];
var pecs = [crewSelected.pProf,crewSelected.eProf,crewSelected.cProf];
var brk = false;

for (var i = 0; i<array_length_1d(pecLabels); i++) {
	
	if keyboard_check_pressed(ord(pecLabels[i])) or keyboard_check_pressed(ord(string(i+1))) {
		
		
		
		for (var j = 0; j<instance_number(ui_c_add_crew); j++) {
			var btn = instance_find(ui_c_add_crew, j) {
				
				if points == 0 {
					pecs[i] = 0;
				}
				
				if btn.uiValue == (pecs[i] + 1) and btn.uiButtonGroup == i+1 and !brk{
					with (btn) {
						with (crewGen_menu_obj) {
							event_perform(ev_other, ev_user0);
						}
					}
					brk = true;
					
					//show_debug_message("uiValue: "+string(btn.uiValue) + " pecProf "+pecLabels[i]+": "+string(crewSelected.pecProf[? pecLabels[i]]));
					
				}
			}
		}
	}
}
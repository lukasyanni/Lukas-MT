/// @description Insert description here
// You can write your code in this editor
event_inherited();


switch (other.uiControlName) {
	
	case "x_lock_menu": 
		menuLock = !menuLock; 
		other.uiButtonState = menuLock ? 1 : 0;
		other.uiTextColor = menuLock ? c_gray : c_white;
		var lockText = menuLock ? "Menu Locked!" : "Menu Unlocked!";
		x_gui_update_alertbox(lockText);
	break;
	
	case "x_save_game":
		x_gui_update_alertbox("Game Saved!");
	break;
	
	case "x_quit": {
		quitDiag = instance_create_layer(cam_x,cam_y, layer, ui_dialog);
		with quitDiag {
			x_gui_confirm_popup("Quit Game", "Are you sure you want to quit?", gameController_obj, "x_quit_game");
			uiDialogPosX = other.cam_x+other.xx/4;
			uiDialogPosY = other.cam_y+other.yy/4;
		}
	}
	break;
	
	case "x_options":
		with (GUI_optionsMenu) {
			if !showMenu {showMenu = true;} else continue;
			event_user(3);
			x_gui_update_alertbox("Menu Opened!");
			easing[? "start"] = -room_height*1/2;
			easing[? "dest"] = room_height*1/4;
			easing[? "duration"] = 60;
			easing[? "time"] = 0;
		}
	break;
	
	case "x_test_event":
		//Creates a random pop-up from the hard-coded data in the event controller object
		
		var event = x_eve_get_random("MEETINGS");
		
		show_debug_message("Event out: "+string(event));
		//TODO: Add more events and trigger them from an in-game action
		
		EVENT_NAME = event[? "name"];
		EVENT_ACTIONS = event[? "actions"];
		EVENT_TEXT = event[? "text"];
		
		if instance_exists(obj_textbox) {
			with (obj_textbox) {
				instance_destroy();
			}
		}
		

		show_debug_message("STARTING EVENT DIALOG IN AI");
		create_dialogue([EVENT_TEXT], [ai_obj]);
		obj_textbox.deleteType = "Hard";

		
		show_debug_message("EVENT ACTIONS type: "+typeof(EVENT_ACTIONS));
		
		instance_create_layer(xx*3/4,64,layer,GUI_eventWindow);
		with (GUI_eventWindow) {
			if !showMenu {showMenu = true;} else continue;
			event_user(3);
			x_gui_update_alertbox("Event triggered!");
			
		}
		
	break;
	
	case "x_pause":
		PAUSED = !PAUSED;
		var alerttext = !PAUSED ? "Unpause" : "Pause";
		var pausetext = PAUSED ? "Unpause" : "Pause";
		x_gui_update_alertbox("Game "+alerttext+"d!");
		other.uiTextValue = pausetext;
	break;
	
	default: exit;
}



#region Set GUI Size
//Dynamic sizing in case the screen is resized
gui_width		= view_wport[0]; //display_get_gui_width();
gui_height		= view_hport[0]; //display_get_gui_height();
display_set_gui_size(gui_width, gui_height);
#endregion

//We check the type of dialogue to see if it is 1) "normal" or 2) a player choice dialogue.

#region TYPE 0: NORMAL
if(type[page] == 0){
	
	//check if last page
	endOfText = !(page+1 < array_length_1d(text))
	
	if(keyboard_check_pressed(interact_key) or keyboard_check_pressed(back_key) or
	(!endOfText and charCount >= str_len and ((page+1 < array_length_1d(text) and type[page+1] == 1) or type[nextline[page]] == 1))){
		
		//If we haven't "typed out" all the letters, immediately "type out" all letters (works as a "skip")
		if(charCount < str_len){
			charCount = string_length(text_NE);
		}
		
		//Only increase page IF page + 1,is less than the total number of entries
		else if(page+1 < array_length_1d(text)){
			event_perform(ev_other, ev_user0);
			switch(nextline[page]){
				case -1: instance_destroy();	exit;
				case  0: page += 1;				break;
				default: page = nextline[page];
			}
			event_perform(ev_alarm, 0);
			
		} else if deleteType != "Hard" { 
			event_perform(ev_other, ev_user0); instance_destroy();
		}
	}
} 
#endregion

#region TYPE 1: DIALOGUE CHOICE
else {
	if(chosen) exit;
	if(keyboard_check_pressed(interact_key) or (keyboard_check_pressed(back_key) and choice == array_length_1d(text[page])-1)){ 
		chosen = true; 
		alarm[2] = 10; 
		audio_play_sound(select_snd_effect, priority_snd_effect, false);
	} 
	
	//Change Choice 
	var change_choice = keyboard_check_pressed(down_key) - keyboard_check_pressed(up_key);
	if(change_choice != 0){ 
		choice += change_choice; 
		audio_play_sound(choice_snd_effect, priority_snd_effect, false); 
	} else if (keyboard_check_pressed(back_key) and choice != array_length_1d(text[page])-1) {
		choice = array_length_1d(text[page])-1; 
		audio_play_sound(choice_snd_effect, priority_snd_effect, false); 
	}
	if (choice < 0) { choice = array_length_1d(text[page])-1; }
	else if (choice > array_length_1d(text[page])-1) { choice = 0; }
}
#endregion
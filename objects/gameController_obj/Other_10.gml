/// @description Insert description here
// You can write your code in this editor

if other.uiControlName == "x_quit_game" {
	#region Quit Game Prompt
	    with (other)  //work with dialog
	    {
	        switch uiDialogResult   
	        {        
	            case 1 : game_end(); break;
	            case 2 : show_debug_message("You Pressed Button 2"); break;
	            case -1: break;
	        }  
	        //to read contents of dialog
	        // show_message_async('Input Box 1 = >'+uiEditBox1.uiTextValue);
	        // show_message_async('Input Box 1 = >'+uiEditBox2.uiTextValue);
	        // if uiCheckBox.checked then show_message_async('CheckBox is Set!');                                             
	    }        
	#endregion

}

else if other.uiControlName=="showdialog" {
		
}
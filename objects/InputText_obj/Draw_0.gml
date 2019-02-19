event_inherited();

draw_set_font(font_ui);
draw_set_color(c_yellow);
draw_set_blend_mode(bm_normal);
draw_set_halign(fa_center);
draw_text(x+sprite_width/2, y+60, m_editing ? string_hash_to_newline("Del - Cancel#Enter - Done#Ctrl+R - Random Name") : "Enter - Rename");
draw_set_halign(fa_center);

#region Textfield + textfield logic
draw_set_color(c_black);
//draw the field background
draw_self();


//Draw the text

//set to m_text
var txt = m_text;
//or to keyboard if editing
draw_set_font(fnt_dialogue_small);

if(m_editing) {
	
	if (string_length(keyboard_string) > 18) {
		keyboard_string = string_copy(keyboard_string, 0, 18);
	}
	
	if (keyboard_check_pressed(ord("R")) and keyboard_check(vk_control)) {
		keyboard_string = x_generate_name(crewSelected.myOptions[0],"Full");
	}
	
	txt = keyboard_string;
	
}
//blinking counter
m_blink+=1;
m_blink = m_blink mod 60;


//left and mid align
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

//draw the text

draw_text(x+4,y,string_hash_to_newline(txt));

//blinking cursor every hald second
if(m_blink>30 and m_editing)
{
    //draw cursor at end of string
    var w = string_width(string_hash_to_newline(txt)),
        h = string_height(string_hash_to_newline("W"));
        draw_line_width_colour(x+w+1,y-h/2,x+w+1,y+h/2,2,c_black,c_black);
    
}
#endregion

//reset align
draw_set_halign(fa_left);
draw_set_valign(fa_top);




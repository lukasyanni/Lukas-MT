/*
    Read the scripts, they contain all the required information about
    all the below functions.
*/
alarm_set(0,240);
#region Textbox Area & Easing

var cam = view_get_camera(0);
var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);

xx = window_get_width();
yy = window_get_height();

alertboxArea = [cam_x+xx-300,0,cam_x+xx,60];
ab_easing = ds_map_create();
#endregion

// Initialize the CTB engine
ctb_init();
msg = "";
fadeOut = false;

// Mark this object as being a textbox
ctb_create();
x_gui_maximize_alertbox();

// Add some icons
icon_typing = spr_ico_typing_small;
icon_finished = spr_ico_continue_small;

// Add some colors
ctb_add_color( "default", c_white );
ctb_add_color( "white", c_white );
ctb_add_color( "blue", c_blue );
ctb_add_color( "yellow", c_yellow );
ctb_add_color( "red", c_red );

// Add some fonts
ctb_add_font( "default", Arial );
ctb_add_font( "normal", Arial );
ctb_add_font( "other", f_other );

// Add a sound
//ctb_add_sound( "gun", snd_gun );

// Add a custom command to change character image!
char_sprite = spr_char;
ctb_add_command( "char", command_char );

// Set the padding of the textbox
// We add a big left padding to insert a character sprite in rhw textbox
ctb_set_padding( 10,10,10,10 );

// Set the textbox's background
sprite_index = ctb_load_subimage( spr_textbox_slice9_subimages, 300, alertboxArea[3]-alertboxArea[1]);

alertOpen = false;
// Add some text in the textbox.

/* */
/*  */




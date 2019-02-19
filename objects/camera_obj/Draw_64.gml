/// @description Insert description here
// You can write your code in this editor

if (live_call()) return live_result;

#region Set GUI Size
//Dynamic sizing in case the screen is resized
gui_width		= view_wport[0]; //display_get_gui_width();
gui_height		= view_hport[0]; //display_get_gui_height();
display_set_gui_size(gui_width, gui_height);
#endregion


#region TAB HUD

if (keyboard_check(vk_tab) && !instance_exists(obj_textbox)) {
	
	#region HUD Backdrop
	
		draw_set_alpha(.5);
		draw_rectangle(0,0,gui_width,gui_height,false);
		draw_set_alpha(1);
		
	#endregion
	
	#region Crew Area
	draw_set_color(c_black);
	draw_rectangle(0,gui_height*3/4,gui_width,gui_height,false);
	draw_set_color(c_white);
	
	for (var i=0; i<array_length_1d(CREW); i++) {
		
		// Draw Crew Sprites
		var spr = CREW[i].sprite_index;
		//Draw With Unlimited Palette Swap     
		pal_swap_set(crew_palette_spr,CREW[i].myColorNumber,false);
		draw_sprite_ext(
			spr,0,
			(gui_width * 1/4) * (i) + sprite_get_width(spr) * 4,
			gui_height * 7/8+sprite_get_height(spr),
			2,2,0,c_white,1
		)
		pal_swap_reset();
		
		//Draw Crew Info Text
		var hstr = CREW[i].hp > 5 ? "Healthy" : "Sick"
		draw_set_font(fnt_hud_small);
		draw_text(
			(gui_width * 1/4) * (i) + sprite_get_width(spr) * 8,
			gui_height * 3/4 + 20,
			string_hash_to_newline(
				CREW[i].name+"#"+
				"#Station - "+CREW[i].special+
				"#Status  - "+CREW[i].state+
				"#Health  - "+hstr
			)
		)
		
		// Draw Divider
		if i > 0 {
			draw_line(
				(gui_width * 1/4) * (i)+24,
				gui_height * 3/4,
				(gui_width * 1/4) * (i)+24,
				gui_height
			)
		}
	}
	#endregion
	
	#region Ship Area
	
	if (room == ship_room) {
		var lx = gui_width*14/15-32;
		var ly = 24;
		var rx = gui_width;
		var ry = gui_height*5/8+32;
	
		draw_set_color(c_black);
		draw_rectangle(lx,ly,rx,ry,false);
		draw_set_color(c_white);
	
		for (var i=0; i<array_length_1d(MECS); i++) {
		
			draw_set_halign(fa_center);
		
			var m = MECS[i];
			var mStr = string_hash_to_newline(
					m.name+
					"#P: " + string(m.p.hp) +
					"#E: " + string(m.e.hp) +
					"#C: " + string(m.c.hp) +
					"#"
				);
			draw_text(
				(lx+rx)/2,
				ly+12+(string_height(mStr)*(i))+(12*(i+1)),
				mStr
			);
		
			draw_set_halign(fa_left);
		}
	}
	#endregion
	
	#region Inventory Area
	
	var lx = 24;
	var ly = gui_height*1/6;
	var rx = gui_width*1/3-80;
	var ry = gui_height*5/8;
	
	draw_set_color(c_black);
	draw_rectangle(lx,ly,rx,ry,false);
	draw_set_color(c_white);
	
	var inv = [global.Physical,global.Electrical,global.Computerized,global.Medical, global.Credits];
	
	draw_set_halign(fa_middle);
	
	draw_text(
		(lx+rx)/2,
		ly+12,
		string_hash_to_newline(
			"Inventory#"+
			"#Physical Components#"+" - "+string(inv[0])+" - "+
			"##Computerized Components#"+" - "+string(inv[1])+" - "+
			"##Electrical Components#"+" - "+string(inv[2])+" - "+
			"##Medical Components#"+" - "+string(inv[3])+" - "
		)
	)
	
	draw_line(
		lx+32,ly+12+string_height("Inventory"),
		rx-32,ly+12+string_height("Inventory")
	)
	
	draw_set_halign(fa_left);
	
	#endregion
	
	#region Pace Area
	if room == ship_room {
		var lx = gui_width*3/4;
		var ly = gui_height*1/6;
		var rx = gui_width*3/4 + string_width("__FASTEST__");
		var ry = gui_height*5/12;
	
		draw_set_color(c_black);
		draw_rectangle(lx,ly,rx,ry,false);
		draw_set_color(c_white);
	
		draw_set_halign(fa_center);
		
		var titleText = @"Pace";
		draw_text((lx+rx)/2, ly+2, titleText);
		draw_line(
			lx+12,
			ly+2+string_height(titleText),
			rx-12,
			ly+2+string_height(titleText)
			);
	
		var speeds = [0.1, 0.5, 1.0, 5.0];
		var spdStrings = ["Normal","Faster","Fastest","Plaid"];
		var changePace = false;
	
		for (var i=0; i<array_length_1d(speeds); i++)	{
			draw_set_color(c_white);
		
			if speeds[i] == PACE {
				draw_set_color(c_yellow);
			
				if !changePace {
					if keyboard_check_pressed(vk_up) and i > 0 {
						PACE = speeds[i-1];
						changePace = true;
					} 
					else if keyboard_check_pressed(vk_down) and i < array_length_1d(speeds)-1 {
						PACE = speeds[i+1];
						changePace = true;
					}
				}	
			}
		
			//Draw the text
		
			draw_text(
				(lx+rx)/2,
				ly+i*string_height(spdStrings[i])+string_height(titleText)+10,
				spdStrings[i]
			)
		
		}
	
		draw_set_halign(fa_left);
	}
	#endregion
	
}

#endregion

/*
	[control_change_pace, 0.1],
	[control_change_pace, 0.5],
	[control_change_pace, 1.0],
	[control_change_pace, 5.0]
*/

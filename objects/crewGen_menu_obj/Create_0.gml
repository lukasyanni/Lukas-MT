/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (live_call()) return live_result;

//Panel Properties
//mySprite = ctb_load_subimage(spr_textbox_slice9_subimages, 768, 400 );
//sprite_set_offset(mySprite,sprite_get_width(mySprite)/2,sprite_get_height(mySprite)/1.5);

y = ystart+40;

//Global Widget Vars
var pecLabels = ["P","E","C"];
crewMenu = instance_create_layer(x-300,y-200,layer,ui_c_crewbox_horiz);
crewSelected = CREW[0];


//Widgets
#region Horizontal Crew Selection Menu
with (crewMenu) {
	
	uiAnchor = other;
	uiSetWidth = 320;
	uiSetHeight = 120;
	uiSpriteAlignV = fa_bottom;
	maxLineHeight = 480;
	items = [];
	sprites = [];
	shaders = [];
	
	for (var i=0; i<array_length_1d(CREW); i++) {
		var nameStr = CREW[i].name;
		nameStr = string_replace(nameStr," ","#");
		items[i] = nameStr; 
		sprites[i] = CREW[i].sprite_index;
		shaders[i] = CREW[i].myColorNumber;
	}
	
	itemindex = 0;
	uiItemWidth = 80;
	
	//Not working
	uiFocusColor = c_green;
	
	uiTextLabel="Crew Roster";
	//uiAlign=fa_center;
	uiButtonList=true;
	uiShowArrows=true;
	uiDrawHeader=false;
	uiDrawBackColor=true;


}
#endregion

x = xstart - 100;

#region PECs Buttons
pecBtns = [];

for (var i = 0; i<array_length_1d(pecLabels); i++) {
	var btn = [];
	for (var j=0; j<3; j++;) {
		btn[j] = instance_create_layer(x+(j+1)*80,y-25+(i*40),layer,ui_c_add_crew);
		with (btn[j]) {
			crewSelected = other.crewSelected;
			uiEventObject = other;
			uiControlName = pecLabels[i];
			uiAnchor = other;
			uiButtonGroup = i+1;
			uiHoverMode = 0;
			uiSetWidth = 60;
			uiTextValue = string(j);
			uiValue = j;
			if (j==0) {
				uiLabel = instance_create_layer(x-40,y,layer,ui_label);
				var o = other;
				with (uiLabel) {
					//uiSetWidth = 10;
					uiAnchor = o;
					uiSetHeight = 30;
					uiDrawBackColor = true;
					uiBackColor = c_white;
					uiTextValue = pecLabels[i];
					uiRadiusX = 0;
					uiRadiusY = 0;
					uiAlign = fa_center;
					uiAlignV = fa_top;
				}
			}
		}
	}
	pecBtns[i] = btn;
}
#endregion


#region Crew Name Input Box

crewNameInput = instance_create_layer(x+50,y-175,layer,InputText_obj);

with (crewNameInput) {
	uiAnchor = other;
}

#endregion

x = xstart;
y = ystart;

/// @description Insert description here
// You can write your code in this editor
event_inherited();

if (crewSelected != CREW[crewGen_menu_obj.crewMenu.itemindex]) {
	crewSelected = CREW[crewGen_menu_obj.crewMenu.itemindex];
	m_text = crewSelected.name;
}
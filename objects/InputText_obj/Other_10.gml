event_inherited();

//if editing
if(m_editing) {
	//done editing
	m_editing = false;
	m_text = keyboard_string;
	//save your string here
	crewSelected.name = m_text;
}


if (!m_editing) {

	with(InputText_obj)
	{
	    //trigger save if editing
	    event_user(0);
	}
	//start editing mode
	m_editing = true;
	text_start = m_text;
	keyboard_string = "";

} else {
	event_user(0);
}



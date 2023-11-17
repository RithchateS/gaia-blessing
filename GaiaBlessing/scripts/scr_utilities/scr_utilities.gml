#region scr_wrap() (Used to wrap values around, mainly for menu selection and such)
function scr_wrap(_value, _minimum, _maximum) {
	if _value > _maximum return _minimum;
	else if _value < _minimum return _maximum;
	else return _value;
}
#endregion

#region scr_range() (Used to contain without wrapping)
function scr_range(_value, _minimum, _maximum) {
	if _value > _maximum return _maximum;
	else if _value < _minimum return _minimum;
	else return _value;
}
#endregion

#region chatterbox_update() (Used to update dialogue system, get the current node, change text, reset progress)
function chatterbox_update() {
	current_node = ChatterboxGetCurrent(chatterbox);
	text_to_display = ChatterboxGetContent(chatterbox, 0);
	text_progress = 0;
	text_finished = false;
}
#endregion

#region scr_room_to_area_name(_room) (Used to convert room data into displayable strings)
function scr_room_to_area_name(_room)
{
	switch(_room)
	{
		case r_village: return "Farm";
		case r_island: return "Town";
		case r_house: return "Home";
		default: return "Unknown Area";
	}
}
#endregion

#region scr_execute_array(_script, _arguments) (Used to execute a script multiple times with various array members)
function scr_execute_array(_script, _arguments){
	switch (array_length(_arguments))
	{
		case 1: return script_execute(_script, _arguments[0]);
		
		case 2: return script_execute(_script, _arguments[0], _arguments[1]);
		
		case 3: return script_execute(_script, _arguments[0], _arguments[1], _arguments[2]);
		
		case 4: return script_execute(_script, _arguments[0], _arguments[1], _arguments[2], _arguments[3]);
		
		case 5: return script_execute(_script, _arguments[0], _arguments[1], _arguments[2], _arguments[3], _arguments[4]);
		
		case 6: return script_execute(_script, _arguments[0], _arguments[1], _arguments[2], _arguments[3], _arguments[4], _arguments[5]);
		
		case 7: return script_execute(_script, _arguments[0], _arguments[1], _arguments[2], _arguments[3], _arguments[4], _arguments[5], _arguments[6]);
		
		case 8: return script_execute(_script, _arguments[0], _arguments[1], _arguments[2], _arguments[3], _arguments[4], _arguments[5], _arguments[6], _arguments[7]);
		
		default: show_error("script_execute_array: argument count not supported!", false);
	}
}
#endregion

#region scr_text_setup(_font, _horizontal_align, _vertical_align, _color) (To be used before every draw_text just as a set up)
function scr_text_setup(_font, _horizontal_align, _vertical_align, _color){
	draw_set_font(_font);
	draw_set_halign(_horizontal_align);
	draw_set_valign(_vertical_align);
	draw_set_color(_color);
}
#endregion

function scr_first_day(){
	scr_inventory_add(1, 5);
	scr_inventory_add(2, 5);
	scr_inventory_add(3, 5);
	scr_inventory_add(4, 5);
	scr_inventory_add(81, 2);

	scr_add_card_from_inventory_to_deck(1);
	scr_add_card_from_inventory_to_deck(1);
	scr_add_card_from_inventory_to_deck(2);
	scr_add_card_from_inventory_to_deck(2);
	scr_add_card_from_inventory_to_deck(3);
	scr_add_card_from_inventory_to_deck(3);
	scr_add_card_from_inventory_to_deck(4);
	scr_add_card_from_inventory_to_deck(4);
	scr_add_card_from_inventory_to_deck(81);
	scr_add_card_from_inventory_to_deck(81);
	
	scr_item_inventory_add(101, 5)
	scr_item_inventory_add(104, 5);

	scr_generate_found_array();
	scr_generate_deck_array();
}
	
function scr_mouse_hover(_x_start, _y_start, _width, _height)
{
	var _im = global.instance_manager_input;
	
	if ((_im.mouse_x_position >= _x_start) && (_im.mouse_x_position <= _x_start + _width))
	{
		if ((_im.mouse_y_position >= _y_start) && (_im.mouse_y_position <= _y_start + _height))
		{
			return 1;
		}
		else
		{
			return 0;
		}
	}
	else
	{
		return 0;
	}
}
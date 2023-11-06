var _input_manager = global.instance_manager_input;

time_since_game_start++;

if (!key_pressed)
{
	title_alpha = min(1, title_alpha + 0.01);
}
else
{
	name_alpha = max(0, name_alpha - 0.04);
	title_alpha = max(0, title_alpha - 0.04);
	save_slot_visible = min(1, save_slot_visible + 0.02);
}

if (_input_manager.input_option_change_vertical != 0 && save_slot_visible >= 1)
{
	save_slot_selected = scr_wrap(save_slot_selected + _input_manager.input_option_change_vertical, 0, 2);
}

if _input_manager.key_activate && key_pressed && !loading_started
{
	global.game_save_slot = save_slot_selected;
	if (!scr_load_game(global.game_save_slot))
	{
		scr_first_day();
		scr_room_transition(TRANSITION_TYPE.SLIDE, NEW_GAME_ROOM);
	}
	loading_started = true;
}


if (_input_manager.key_any) key_pressed = true;
var _input_manager = global.instance_manager_input;

time_since_game_start++;

title_alpha = min(1, title_alpha + 0.03);

if ((title_state == 0) && ((_input_manager.key_any) || (_input_manager.mouse_left_pressed))) title_state = 1;

if (title_state == 0)
{
	title_prompt_alpha = min(1, title_prompt_alpha + 0.03);
}
else if (title_state == 1)
{
	title_prompt_alpha = max(0, title_prompt_alpha - 0.05);
	title_option_alpha = min(1, title_option_alpha + 0.02);
}

if (_input_manager.mouse_moved)
{
	if (title_state == 1)
	{
		if ((_input_manager.mouse_x_position > ((NATIVE_GUI_RESOLUTION_WIDTH - title_option_width) * 0.5)) && (_input_manager.mouse_x_position < ((NATIVE_GUI_RESOLUTION_WIDTH + title_option_width) * 0.5)))
		{
			if ((_input_manager.mouse_y_position > 208) && (_input_manager.mouse_y_position < 334))
			{
				if (((_input_manager.mouse_y_position - 208) % 34) < 24)
				{
					focused_option = floor((_input_manager.mouse_y_position - 208) / 34);
				}
			}
		}
	}
	if (title_state == 2)
	{
		if ((_input_manager.mouse_x_position > ((NATIVE_GUI_RESOLUTION_WIDTH - title_option_width) * 0.5)) && (_input_manager.mouse_x_position < ((NATIVE_GUI_RESOLUTION_WIDTH + title_option_width) * 0.5)))
		{
			if ((_input_manager.mouse_y_position > 242) && (_input_manager.mouse_y_position < 334))
			{
				if (((_input_manager.mouse_y_position - 242) % 34) < 24)
				{
					save_slot_selected = floor((_input_manager.mouse_y_position - 242) / 34);
				}
			}
		}
	}
}
else
{
	if (title_state == 1)
	{
		if (_input_manager.input_option_change_vertical != 0)
		{
			focused_option = scr_wrap(focused_option + _input_manager.input_option_change_vertical, 0, 3);
		}
	}
	if (title_state == 2)
	{
		if (_input_manager.input_option_change_vertical != 0)
		{
			save_slot_selected = scr_wrap(save_slot_selected + _input_manager.input_option_change_vertical, 0, 2);
		}
	}
}

if (title_state == 1)
{
	if (_input_manager.key_activate || _input_manager.mouse_left_pressed)
	{
		if (focused_option == 0)
		{
			title_state = 2;
		}
		else if (focused_option == 3)
		{
			game_end();
		}
	}
}
else if (title_state == 2)
{
	if (_input_manager.key_activate || _input_manager.mouse_left_pressed)
	{
		if (save_slot_selected >= 0 && !loading_started)
		{
			global.game_save_slot = save_slot_selected;
			if (!scr_load_game(global.game_save_slot))
			{
				scr_first_day();
				scr_room_transition(TRANSITION_TYPE.SLIDE, NEW_GAME_ROOM);
			}
			loading_started = true;
		}
	}
	if (_input_manager.key_back)
	{
		title_state = 1;
	}
}

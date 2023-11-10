lerp_progress += (1 - lerp_progress) / 50;

x1 = lerp(x1, x1_destination, lerp_progress);
x2 = lerp(x2, x2_destination, lerp_progress);
y1 = lerp(y1, y1_destination, lerp_progress);
y2 = lerp(y2, y2_destination, lerp_progress);

var _input_manager = global.instance_manager_input;

// Response Cycling

if (_input_manager.key_activate)
{
	switch (selected_option)
	{
		case 1:
			scr_inventory(0);
			instance_destroy();
			break;
			
		case 2:
			scr_sales(0);
			instance_destroy();
			break;
			
		case 3:
			scr_booster(0);
			instance_destroy();
			break;
					
		case 4:
			scr_collection(0);
			instance_destroy();
			break;
			
		default:
			break;
	}
}

if (_input_manager.key_back)
{
	instance_destroy();
	with (obj_player)
	{
		state = last_state;
		alarm[0] = 10;
		text_cooldown = true;
	}
}

if (_input_manager.input_option_change_vertical != 0)
{
	selected_option = scr_range(selected_option + _input_manager.input_option_change_vertical, 1, 4);
}


if ((_input_manager.mouse_x_position > NATIVE_GUI_RESOLUTION_WIDTH / 4 + 20) && (_input_manager.mouse_x_position < 3 * NATIVE_GUI_RESOLUTION_WIDTH / 4 - 20))
{
	if ((_input_manager.mouse_y_position > NATIVE_GUI_RESOLUTION_HEIGHT / 4 + 40) && (_input_manager.mouse_y_position < NATIVE_GUI_RESOLUTION_HEIGHT / 4 + 140))
	{
		selected_option = floor((_input_manager.mouse_y_position - ((NATIVE_GUI_RESOLUTION_HEIGHT / 4) + 40)) / 25) + 1;
		if (_input_manager.mouse_left_pressed)
		{
			switch (selected_option)
			{
				case 1:
					scr_inventory(0);
					instance_destroy();
					break;
			
				case 2:
					scr_sales(0);
					instance_destroy();
					break;
					
				case 3:
					scr_booster(0);
					instance_destroy();
					break;
					
				case 4:
					scr_collection(0);
					instance_destroy();
					break;
			
				default:
					break;
			}
		}
	}
}
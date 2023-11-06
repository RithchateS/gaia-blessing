if ((input_manager.mouse_x_position > NATIVE_RESOLUTION_WIDTH * 0.5 - 50) && (input_manager.mouse_x_position < NATIVE_RESOLUTION_WIDTH * 0.5 + 50))
{
	if ((input_manager.mouse_y_position > NATIVE_GUI_RESOLUTION_HEIGHT * 0.5 + 40) && (input_manager.mouse_y_position < NATIVE_GUI_RESOLUTION_HEIGHT * 0.5 + 60))
	{
		if (input_manager.mouse_left_pressed)
		{
			if (inventory_manager.item_inventory[114][1] > 3)
			{
				scr_room_transition(TRANSITION_TYPE.FADE, r_ending);
			}
		}
	}
}

if (input_manager.key_back)
{
	instance_destroy();
}

if ((input_manager.mouse_x_position >= NATIVE_GUI_RESOLUTION_WIDTH - 72) && (input_manager.mouse_x_position <= NATIVE_GUI_RESOLUTION_WIDTH - 5))
{
	if ((input_manager.mouse_y_position >= 5) && (input_manager.mouse_y_position <= 5 + ui_tab_height))
	{
		if (input_manager.mouse_left_pressed)
		{
			global.game_paused = false;
			with (all)
			{
				image_speed = game_paused_image_speed;
			}
			instance_destroy();
		}
	}
}

if ((input_manager.mouse_y_position > inventory_card_start_y) && (input_manager.mouse_y_position < inventory_card_end_y))
{
	if ((input_manager.mouse_x_position > inventory_card_start_x) && (input_manager.mouse_x_position < inventory_card_end_x))
	{
		if ((input_manager.mouse_x_position - inventory_card_start_x) % (CARD_WIDTH + 16) > CARD_WIDTH || (input_manager.mouse_y_position - inventory_card_start_y) % (CARD_HEIGHT + 16) > CARD_HEIGHT)
		{
			focused_card = -1;
		}
		else
		{
			focused_card_x = floor((input_manager.mouse_x_position - inventory_card_start_x) / (CARD_WIDTH + 16));
			focused_card_y = floor((input_manager.mouse_y_position - inventory_card_start_y) / (CARD_HEIGHT + 16));
			if (ui_tab == 0)
			{
				focused_card = ((card_start_row - 1) * 4) + (focused_card_x + 1) + (4 * (focused_card_y));
			}
			else if (ui_tab == 1)
			{
				focused_card = 60 + ((card_start_row - 1) * 4) + (focused_card_x + 1) + (4 * (focused_card_y));
			}
			
		}
	}
	else
	{
		focused_card = -1;
	}
}
else
{
	focused_card = -1;
}

if (input_manager.mouse_left_pressed && (focused_card != -1))
{
	scr_add_card_from_inventory_to_deck(focused_card);
}

if (input_manager.mouse_right_pressed && (focused_card != -1))
{
	scr_remove_card_from_deck_to_inventory(focused_card);
}

if ((input_manager.mouse_x_position > deck_sprite_start_x + 85) && (input_manager.mouse_x_position < deck_sprite_start_x + 97))
{
	if ((input_manager.mouse_y_position > screen_border + 33) && (input_manager.mouse_y_position < screen_border + 33 + ((inventory_manager.card_type_in_deck_count) * 19)))
	{
		if ((input_manager.mouse_y_position - (screen_border + 33)) % 19 > 12)
		{
			focused_remove = -1;
		}
		else
		{
			focused_remove = floor((input_manager.mouse_y_position - (screen_border + 33)) / 19);
		}
	}
	else
	{
		focused_remove = -1;
	}
}
else
{
	focused_remove = -1;
}

if (inventory_manager.card_deck_count == 0)
{
	focused_remove = -1;
}

if (input_manager.mouse_left_pressed && (focused_remove != -1))
{
	scr_remove_card_from_deck_to_inventory(inventory_manager.card_type_in_deck[focused_remove]);
}

if (input_manager.key_back)
{
	instance_destroy();
}

if (input_manager.mouse_x_position > 536) && (input_manager.mouse_x_position < 603)
{
	if (input_manager.mouse_y_position > 291) && (input_manager.mouse_y_position < 316)
	{
		if (input_manager.mouse_left_pressed)
		{
			scr_deck_clear();
		}
	}
}

if ((input_manager.mouse_x_position >= NATIVE_GUI_RESOLUTION_WIDTH - 72) && (input_manager.mouse_x_position <= NATIVE_GUI_RESOLUTION_WIDTH - 5))
{
	if ((input_manager.mouse_y_position >= 5) && (input_manager.mouse_y_position <= 5 + ui_tab_height))
	{
		if (input_manager.mouse_left_pressed)
		{
			instance_destroy();
		}
	}
}


if ((input_manager.mouse_x_position >= 483) && (input_manager.mouse_x_position <= 491))
{
	if ((input_manager.mouse_y_position >= 181) && (input_manager.mouse_y_position <= 208))
	{
		if (input_manager.mouse_left_pressed)
		{
			if ((input_manager.mouse_y_position - 181) % 11 <= 8)
			{
				card_start_row = floor((input_manager.mouse_y_position - 181) / 11) + 1;
			}
		}
	}
}

if (input_manager.key_tab)
{
	ui_tab = scr_wrap(ui_tab + 1, 0, 1);
}
if ((input_manager.mouse_y_position > inventory_card_start_y) && (input_manager.mouse_y_position < inventory_card_end_y))
{
	if ((input_manager.mouse_x_position > inventory_card_start_x) && (input_manager.mouse_x_position < inventory_card_end_x))
	{
		if ((input_manager.mouse_x_position - inventory_card_start_x) % (CARD_WIDTH + 8) > CARD_WIDTH || (input_manager.mouse_y_position - inventory_card_start_y) % (CARD_HEIGHT + 16) > CARD_HEIGHT)
		{
			focused_card = -1;
		}
		else
		{
			focused_card_x = floor((input_manager.mouse_x_position - inventory_card_start_x) / (CARD_WIDTH + 8));
			focused_card_y = floor((input_manager.mouse_y_position - inventory_card_start_y) / (CARD_HEIGHT + 16));
			if (focused_card_x + (4 * focused_card_y) >= inventory_manager.card_found_count)
			{
				focused_card = -1;
			}
			else
			{
				focused_card = inventory_manager.card_found[focused_card_x + (4 * (focused_card_y))];
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
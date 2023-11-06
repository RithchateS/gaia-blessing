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
			if (focused_card_x + (5 * focused_card_y) >= inventory_manager.item_found_count)
			{
				focused_card = -1;
			}
			else
			{
				focused_card = inventory_manager.item_found[focused_card_x + (5 * (focused_card_y))];
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
	if (inventory_manager.item_inventory[focused_card][1] > 0)
	{
		scr_sell_item_card(focused_card);
	}
}

if (input_manager.key_back)
{
	instance_destroy();
}
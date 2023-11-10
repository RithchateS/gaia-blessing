
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
			focused_card = 100 + (card_start_row - 1) + focused_card_y + 1;
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
	if (inventory_manager.item_inventory[focused_card][focused_card_x + 1] > 0)
	{
		inventory_manager.item_inventory[focused_card][focused_card_x + 1]--;
		var _found = false;
		for (var _i = 0; _i < card_types_in_sales_count; _i++)
		{
			if(card_types_in_sales[_i][0] == focused_card)
			{
				if (card_types_in_sales[_i][1] == focused_card_x + 1)
				{
					_found = true;
					var _index = _i;
					break;
				}
			}
		}
		
		if (!_found)
		{
			card_types_in_sales[card_types_in_sales_count][0] = focused_card;
			card_types_in_sales[card_types_in_sales_count][1] = focused_card_x + 1;
			card_types_in_sales[card_types_in_sales_count][2] = 1;
			card_types_in_sales_count++;
		}
		else
		{
			card_types_in_sales[_index][2]++;
		}
		
		sales[sales_count] = [focused_card, focused_card_x + 1];
		sales_count++;	
	}
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
			scr_generate_item_found_array();
			for (var _i = 0; _i < sales_count; _i++)
			{
				scr_sell_item_card(sales[_i][0], sales[_i][1]);
			}
			sales = [];
			sales_count = 0;
			card_types_in_sales = [];
			card_types_in_sales_count = 0;
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
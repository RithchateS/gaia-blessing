if (room == r_initialize || room == r_title || instance_exists(obj_item_inventory_ui) || instance_exists(obj_sales_ui) || instance_exists(obj_booster_ui) || instance_exists(obj_collection_ui) || instance_exists(obj_inventory_ui))
{
	visible = false;
}
else
{
	visible = true;
}

if (room != r_village)
{
	show_cards = false;
}
else
{
	show_cards = true;
}

time_since_creation++;

var _input_manager = global.instance_manager_input;
var _card_manager = global.instance_manager_card;
var _deck_manager = global.instance_manager_deck;

if (global.game_paused)
{	
	if (_input_manager.key_tab)
	{
		global.game_paused_tab++;
		global.game_paused_tab = scr_wrap(global.game_paused_tab, 0, 2);
	}
	
	switch (global.game_paused_tab)
	{
		case 0:
			pause_option_selected = scr_wrap(pause_option_selected + _input_manager.input_option_change_vertical, 0, option_count - 1);
	
			if ((_input_manager.mouse_x_position >= NATIVE_GUI_RESOLUTION_WIDTH - 72) && (_input_manager.mouse_x_position <= NATIVE_GUI_RESOLUTION_WIDTH - 5))
			{
				if ((_input_manager.mouse_y_position >= 5) && (_input_manager.mouse_y_position <= 29))
				{
					if (_input_manager.mouse_left_pressed)
					{
						global.game_paused = false;
						with (all)
						{
							image_speed = game_paused_image_speed;
						}
					}
				}
			}
	
			if (_input_manager.key_activate)
			{
				switch (pause_option_selected)
				{
					case 0: // Continue
					{
						global.game_paused = false;
						with (all)
						{
							game_paused_image_speed = image_speed;
							image_speed = 0;
						}
					} break;
					case 1: // Main Menu
					{
						game_restart();
					} break;
					case 2: // Save and Quit to Desktop
					{
						game_end();
					} break;
				}
			}
			break;
			
		case 1:
			if (_input_manager.input_option_change_horizontal != 0)
			{
				card_selected = scr_range(card_selected + _input_manager.input_option_change_horizontal, 0, 14);
			}
			
			if (_input_manager.input_option_change_vertical != 0)
			{
				card_selected = scr_range(card_selected + (5 * _input_manager.input_option_change_vertical), 0, 14);
			}
			
			card_selected_row = floor(card_selected / 5);
			card_selected_column = card_selected % 5;
			
			if (_input_manager.key_back)
			{
				global.game_paused = false;
				with (all)
				{
					image_speed = game_paused_image_speed;
				}
			}

			break;
			
		case 2:
			if (_input_manager.input_option_change_horizontal != 0)
			{
				card_book_selected = scr_range(card_book_selected + _input_manager.input_option_change_horizontal, 1, 100);
				
			}
			
			if (_input_manager.input_option_change_vertical != 0)
			{
				card_book_selected = scr_range(card_book_selected + (5 * _input_manager.input_option_change_vertical), 1, 100);
			}
			
			if (card_book_selected > ((card_book_start_row + 2) * 5))
			{
				card_book_start_row++;
				if (card_book_start_row > 18)
				{
					card_book_start_row = 18;
				}
			}
			else if (card_book_selected <= ((card_book_start_row - 1) * 5))
			{
				card_book_start_row--;
				if (card_book_start_row < 1)
				{
					card_book_start_row = 1;
				}
			}
			
			card_book_row = floor((card_book_selected - ((card_book_start_row - 1) * 5))/ 5) + 1;
			card_book_column = ((card_book_selected - 1) % 5) + 1;
			
			if ((_input_manager.mouse_x_position >= 604) && (_input_manager.mouse_x_position <= 612))
			{
				if ((_input_manager.mouse_y_position >= 98) && (_input_manager.mouse_y_position <= 291))
				{
					if (_input_manager.mouse_left_pressed)
					{
						if ((_input_manager.mouse_y_position - 98) % 11 <= 8)
						{
							card_book_start_row = floor((_input_manager.mouse_y_position - 98) / 11) + 1;
							card_book_selected = (((card_book_start_row - 1) + (card_book_row - 1)) * 5) + card_book_column;
						}
					}
				}
			}
			
			if (_input_manager.key_back)
			{
				global.game_paused = false;
				with (all)
				{
					image_speed = game_paused_image_speed;
				}
			}
			
			if ((_input_manager.mouse_x_position >= NATIVE_GUI_RESOLUTION_WIDTH - 72) && (_input_manager.mouse_x_position <= NATIVE_GUI_RESOLUTION_WIDTH - 5))
			{
				if ((_input_manager.mouse_y_position >= 5) && (_input_manager.mouse_y_position <= 5 + ui_tab_height))
				{
					if (_input_manager.mouse_left_pressed)
					{
						global.game_paused = false;
						with (all)
						{
							image_speed = game_paused_image_speed;
						}
					}
				}
			}
			
			break;
		
		default:
			show_debug_message("Invalid Tab Number");
			break;
	}
	
}
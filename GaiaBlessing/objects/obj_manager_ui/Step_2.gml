var _input_manager = global.instance_manager_input;
var _card_manager = global.instance_manager_card;
var _deck_manager = global.instance_manager_deck;

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

if (show_menu_ui)
{
	menu_background_alpha = scr_range(menu_background_alpha + menu_background_alpha_rate, menu_background_min, menu_background_max);
	menu_border_top_current_y = scr_range(menu_border_top_current_y + menu_border_top_y_rate, menu_border_top_start_y, menu_border_top_destination_y);
	menu_border_bottom_current_y = scr_range(menu_border_bottom_current_y - menu_border_bottom_y_rate, menu_border_bottom_start_y, menu_border_bottom_destination_y);
	menu_button_back_current_y = scr_range(menu_button_back_current_y + menu_button_back_y_rate, menu_button_back_start_y, menu_button_back_destination_y);
	
	if (current_menu_level == 0)
	{
		menu_0_current_y = scr_range(menu_0_current_y + menu_0_y_rate, menu_0_start_y, menu_0_destination_y);
		menu_0_array_lerp_progress = scr_range(menu_0_array_lerp_progress + 0.1, 0, 1);
		menu_0_option_current_x = lerp(menu_0_option_current_x, 0, menu_0_array_lerp_progress);
		menu_0_option_current_y = lerp(menu_0_option_current_y, 0, menu_0_array_lerp_progress);
		menu_0_option_current_width = (75 - menu_0_option_current_x) * 2;
		menu_0_option_current_height = (47 - menu_0_option_current_y) * 2;
	}
	else
	{
		menu_0_current_y = scr_range(menu_0_current_y - menu_0_y_rate, menu_0_start_y, menu_0_destination_y);
		menu_0_array_lerp_progress = scr_range(menu_0_array_lerp_progress - 0.1, 0, 1);
		menu_0_option_current_x = lerp(menu_0_option_width * 0.5, 0, menu_0_array_lerp_progress);
		menu_0_option_current_y = lerp(menu_0_option_height * 0.5, 0, menu_0_array_lerp_progress);
		menu_0_option_current_width = (75 - menu_0_option_current_x) * 2;
		menu_0_option_current_height = (47 - menu_0_option_current_y) * 2;
	}
	
	if (current_menu_level == 1)
	{
		menu_1_current_y = scr_range(menu_1_current_y + menu_1_y_rate, menu_1_start_y, menu_1_destination_y);
		menu_1_title = computer_option[menu_0_focus];
		switch (menu_0_focus)
		{
			case 0:
				deck_manager_lerp_progress = scr_range(deck_manager_lerp_progress + 0.1, 0, 1);
				deck_manager_current_width = lerp(0, deck_manager_width, deck_manager_lerp_progress);
				deck_manager_current_height = lerp(0, deck_manager_height, deck_manager_lerp_progress);
				deck_status_current_width = lerp(0, deck_status_width, deck_manager_lerp_progress);
				deck_status_current_height = lerp(0, deck_status_height, deck_manager_lerp_progress);
				break;
				
			case 1:
				credit_exchange_lerp_progress = scr_range(credit_exchange_lerp_progress + 0.1, 0, 1);
				credit_exchange_current_width = lerp(0, credit_exchange_width, credit_exchange_lerp_progress);
				credit_exchange_current_height = lerp(0, credit_exchange_height, credit_exchange_lerp_progress);
				sales_current_width = lerp(0, sales_width, credit_exchange_lerp_progress);
				sales_current_height = lerp(0, sales_height, credit_exchange_lerp_progress);
				break;
				
			case 2:
				booster_menu_lerp_progress = scr_range(booster_menu_lerp_progress + 0.1, 0, 1);
				booster_menu_current_width = lerp(0, booster_menu_width, booster_menu_lerp_progress);
				booster_menu_current_height = lerp(0, booster_menu_height, booster_menu_lerp_progress);
				
				if (booster_generated)
				{
					frame_since_booster_ended++;
					card1_lerp_progress += (1 - card1_lerp_progress) / 50;
		
					if (frame_since_booster_ended > 10)
					{
						card2_lerp_progress += (1 - card2_lerp_progress) / 50;
					}
		
					if (frame_since_booster_ended > 20)
					{
						card3_lerp_progress += (1 - card3_lerp_progress) / 50;
					}
	
					card1_x1 = lerp(card1_x1, card1_x1_destination, card1_lerp_progress);
					card1_x2 = lerp(card1_x2, card1_x2_destination, card1_lerp_progress);
					card1_y1 = lerp(card1_y1, card1_y1_destination, card1_lerp_progress);
					card1_y2 = lerp(card1_y2, card1_y2_destination, card1_lerp_progress);
	
					card2_x1 = lerp(card2_x1, card2_x1_destination, card2_lerp_progress);
					card2_x2 = lerp(card2_x2, card2_x2_destination, card2_lerp_progress);
					card2_y1 = lerp(card2_y1, card2_y1_destination, card2_lerp_progress);
					card2_y2 = lerp(card2_y2, card2_y2_destination, card2_lerp_progress);
	
					card3_x1 = lerp(card3_x1, card3_x1_destination, card3_lerp_progress);
					card3_x2 = lerp(card3_x2, card3_x2_destination, card3_lerp_progress);
					card3_y1 = lerp(card3_y1, card3_y1_destination, card3_lerp_progress);
					card3_y2 = lerp(card3_y2, card3_y2_destination, card3_lerp_progress);
	
					if (card3_x1 < card3_x1_destination + 10 && !booster_animation_ended)
					{
						booster_animation_ended = true;
					}
				}
				break;
			
			case 3:
				quest_menu_lerp_progress = scr_range(quest_menu_lerp_progress + 0.1, 0, 1);
				quest_menu_current_width = lerp(0, quest_menu_width, quest_menu_lerp_progress);
				quest_menu_current_height = lerp(0, quest_menu_height, quest_menu_lerp_progress);
				
				if (quest_detail_show)
				{
					quest_detail_lerp_progress = scr_range(quest_detail_lerp_progress + 0.1, 0, 1);
					quest_detail_current_width = lerp(0, quest_detail_width, quest_detail_lerp_progress);
					quest_detail_current_height = lerp(0, quest_detail_height, quest_detail_lerp_progress);
				}
				else
				{
					quest_detail_lerp_progress = scr_range(quest_detail_lerp_progress - 0.1, 0, 1);
					quest_detail_current_width = lerp(0, quest_detail_width, quest_detail_lerp_progress);
					quest_detail_current_height = lerp(0, quest_detail_height, quest_detail_lerp_progress);
				}
			
				break;
		}
	}
	else
	{
		menu_1_current_y = scr_range(menu_1_current_y - menu_1_y_rate, menu_1_start_y, menu_1_destination_y);
		menu_1_title = "";
		deck_manager_lerp_progress = scr_range(deck_manager_lerp_progress - 0.1, 0, 1);
		deck_manager_current_width = lerp(0, deck_manager_width, deck_manager_lerp_progress);
		deck_manager_current_height = lerp(0, deck_manager_height, deck_manager_lerp_progress);
		deck_status_current_width = lerp(0, deck_status_width, deck_manager_lerp_progress);
		deck_status_current_height = lerp(0, deck_status_height, deck_manager_lerp_progress);
		
		credit_exchange_lerp_progress = scr_range(credit_exchange_lerp_progress - 0.1, 0, 1);
		credit_exchange_current_width = lerp(0, credit_exchange_width, credit_exchange_lerp_progress);
		credit_exchange_current_height = lerp(0, credit_exchange_height, credit_exchange_lerp_progress);
		sales_current_width = lerp(0, sales_width, credit_exchange_lerp_progress);
		sales_current_height = lerp(0, sales_height, credit_exchange_lerp_progress);
		
		booster_menu_lerp_progress = scr_range(booster_menu_lerp_progress - 0.1, 0, 1);
		booster_menu_current_width = lerp(0, booster_menu_width, booster_menu_lerp_progress);
		booster_menu_current_height = lerp(0, booster_menu_height, booster_menu_lerp_progress);
		
		quest_menu_lerp_progress = scr_range(quest_menu_lerp_progress - 0.1, 0, 1);
		quest_menu_current_width = lerp(0, quest_menu_width, quest_menu_lerp_progress);
		quest_menu_current_height = lerp(0, quest_menu_height, quest_menu_lerp_progress);
		
		quest_detail_lerp_progress = scr_range(quest_detail_lerp_progress - 0.1, 0, 1);
		quest_detail_current_width = lerp(0, quest_detail_width, quest_detail_lerp_progress);
		quest_detail_current_height = lerp(0, quest_detail_height, quest_detail_lerp_progress);
}
}
else
{
	menu_background_alpha = scr_range(menu_background_alpha - menu_background_alpha_rate, menu_background_min, menu_background_max);
	menu_border_top_current_y = scr_range(menu_border_top_current_y - menu_border_top_y_rate, menu_border_top_start_y, menu_border_top_destination_y);
	menu_border_bottom_current_y = scr_range(menu_border_bottom_current_y + menu_border_bottom_y_rate, menu_border_bottom_start_y, menu_border_bottom_destination_y);
	menu_button_back_current_y = scr_range(menu_button_back_current_y - menu_button_back_y_rate, menu_button_back_start_y, menu_button_back_destination_y);
	menu_0_current_y = scr_range(menu_0_current_y - menu_0_y_rate, menu_0_start_y, menu_0_destination_y);
	
	menu_0_array_lerp_progress = scr_range(menu_0_array_lerp_progress - 0.1, 0, 1);
	menu_0_option_current_x = lerp(menu_0_option_width * 0.5, 0, menu_0_array_lerp_progress);
	menu_0_option_current_y = lerp(menu_0_option_height * 0.5, 0, menu_0_array_lerp_progress);
	menu_0_option_current_width = (75 - menu_0_option_current_x) * 2;
	menu_0_option_current_height = (47 - menu_0_option_current_y) * 2;
}

if (skip)
{
	skip = !skip;
}





/*
if (global.game_paused)
{	
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
			
	
	switch (global.game_paused_tab)
	{
		case 0:
			pause_option_selected = scr_wrap(pause_option_selected + _input_manager.input_option_change_vertical, 0, pause_option_count - 1);
	
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
			
			card_book_row = floor((card_book_selected - ((card_book_start_row - 1) * 5) - 1)/ 5) + 1;
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
							show_debug_message(card_book_start_row);
							show_debug_message(card_book_row);
							show_debug_message(card_book_column);
							
							show_debug_message(card_book_selected);
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
			break;
		
		default:
			show_debug_message("Invalid Tab Number");
			break;
	}
	
}
*/
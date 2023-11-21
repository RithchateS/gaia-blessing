// Deck Management

var _input_manager = global.instance_manager_input;
var _card_manager = global.instance_manager_card;
var _deck_manager = global.instance_manager_deck;
var _inventory_manager = global.instance_manager_inventory;

#region Getting Card Asset Index

card_to_display_amount = 0;

for (var _i = 0; _i < 5; _i++)
{
	if (_deck_manager.active_hand[_i + 1] > 0)
	{
		card_to_display[card_to_display_amount] = asset_get_index("spr_card_" + string(_deck_manager.daily_deck[_deck_manager.active_hand[_i + 1]][0]));
		card_to_display_amount++;
	}
}

#endregion

#region Card stuff
if (focused_card == -1 && !focused_card_hold)
{
	if (_input_manager.mouse_y_position > NATIVE_GUI_RESOLUTION_HEIGHT + 10 - CARD_HEIGHT)
	{
		if ((_input_manager.mouse_x_position > ((NATIVE_GUI_RESOLUTION_WIDTH * 0.5) - (0.48 * card_to_display_amount * CARD_WIDTH))) && (_input_manager.mouse_x_position < ((NATIVE_GUI_RESOLUTION_WIDTH * 0.5) + (0.48 * card_to_display_amount * CARD_WIDTH))))
		{
			focused_card = _input_manager.mouse_x_position - ((NATIVE_GUI_RESOLUTION_WIDTH - (card_to_display_amount * CARD_WIDTH * 0.96)) / 2);
			focused_card = focused_card / (0.96 * CARD_WIDTH);
			focused_card -= frac(focused_card);
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
}
else if (focused_card != -1 && !focused_card_hold)
{
	if (_input_manager.mouse_y_position > NATIVE_GUI_RESOLUTION_HEIGHT - 15 - CARD_HEIGHT)
	{
		if ((_input_manager.mouse_x_position > ((NATIVE_GUI_RESOLUTION_WIDTH * 0.5) - (0.48 * card_to_display_amount * CARD_WIDTH))) && (_input_manager.mouse_x_position < ((NATIVE_GUI_RESOLUTION_WIDTH * 0.5) + (0.48 * card_to_display_amount * CARD_WIDTH))))
		{
			var _previous_focus = focused_card;
			focused_card = _input_manager.mouse_x_position - ((NATIVE_GUI_RESOLUTION_WIDTH - (card_to_display_amount * CARD_WIDTH * 0.96)) / 2);
			focused_card = focused_card / (0.96 * CARD_WIDTH);
			focused_card -= frac(focused_card);
			if (focused_card != _previous_focus)
			{
				if (_input_manager.mouse_y_position < NATIVE_GUI_RESOLUTION_HEIGHT + 10 - CARD_HEIGHT)
				{
					focused_card = -1;
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
}
#endregion

if (show_menu_ui)
{
	#region Back Button
	
	menu_button_back_focus = scr_mouse_hover(menu_button_back_current_x, menu_button_back_current_y, menu_button_back_width, menu_button_back_height);
	if (menu_button_back_focus)
	{
		if (_input_manager.mouse_left_pressed)
		{
			if (current_menu_level == 1)
			{
				if (menu_0_focus == 1)
				{
					for (var _i = 0; _i < card_types_in_sales_count; _i++)
					{
						for (var _j = 0; _j < card_types_in_sales[_i][1]; _j++)
						{
							_inventory_manager.item_inventory[card_types_in_sales[_i][0]][2]--;
						}
					}
					sales_value_total = 0;
					sales = [];
					sales_count = 0;
					card_types_in_sales = [];
					card_types_in_sales_count = 0;
				}
				else if (menu_0_focus == 3)
				{
					if (quest_detail_show)
					{
						quest_option_focus = -1;
						quest_detail_show = false;
						current_menu_level++;
					}
				}
			}
			
			current_menu_level--;
			
			if (current_menu_level < 0)
			{
				current_menu_level = 0;
				global.game_paused = !global.game_paused;
			
				with (all)
				{
					game_paused_image_speed = image_speed;
					image_speed = 0;
				}
				
				show_menu_ui = false;
			}
		}
	}
	#endregion
	
	#region Main Menu
	
	if (current_menu_level == 0 && !skip)
	{
		booster_generated = false;
		
		if (scr_mouse_hover(menu_0_array_start_x, menu_0_array_start_y, menu_0_option_width + (2 * menu_0_sep_x), menu_0_option_height + menu_0_sep_y))
		{
			for (var _i = 0; _i < 6; _i++)
			{
				menu_0_focus = -1;
				if (scr_mouse_hover(menu_0_array_start_x + ((_i % 3) * menu_0_sep_x), menu_0_array_start_y + (floor(_i / 3) * menu_0_sep_y), menu_0_option_width, menu_0_option_height))
				{
					menu_0_focus = _i;
					break;
				}
			}
			
			if (_input_manager.mouse_left_pressed && menu_0_focus != -1)
			{
				if (menu_0_focus == 5)
				{
					scr_new_textbox("quit_simulation");
				}
				else
				{
					current_menu_level = 1;
					previous_menu_level = 0;
					deck_manager_tab_focus = 0;
					skip = true;
				}
			}
		}
		else
		{
			menu_0_focus = -1;
		}
	}
	
	#endregion
	
	if (current_menu_level == 1 && !skip)
	{
		switch (menu_0_focus)
		{
			case 0:
				#region Deck Manager
			
				if (scr_mouse_hover(deck_manager_start_x, deck_manager_start_y, deck_manager_tab_width * 5, deck_manager_tab_height))
				{
					if (_input_manager.mouse_left_pressed)
					{
						deck_manager_tab_focus = floor((_input_manager.mouse_x_position - deck_manager_start_x) / deck_manager_tab_width);
						deck_manager_card_start_row = 1;
					}
				}
				
				clear_button_focus = scr_mouse_hover(clear_button_start_x, clear_button_start_y, clear_button_width, clear_button_height);
				
				if (scr_mouse_hover(deck_manager_card_start_x, deck_manager_card_start_y, (CARD_WIDTH * 4) + 48, (CARD_HEIGHT * 3) + 32))
				{
					if (((_input_manager.mouse_x_position - deck_manager_card_start_x) % (CARD_WIDTH + 16) <= CARD_WIDTH) && ((_input_manager.mouse_y_position - deck_manager_card_start_y) % (CARD_HEIGHT + 16) <= CARD_HEIGHT))
					{
						deck_manager_focused_column = floor((_input_manager.mouse_x_position - deck_manager_card_start_x) / (CARD_WIDTH + 16));
						deck_manager_focused_row = floor((_input_manager.mouse_y_position - deck_manager_card_start_y) / (CARD_HEIGHT + 16));
						deck_manager_focused_card = (20 * deck_manager_tab_focus) + ((deck_manager_card_start_row - 1) * 4) + (deck_manager_focused_column + 1) + (4 * deck_manager_focused_row);
					}
					else
					{
						deck_manager_focused_card = -1;
					}
				}
				else
				{
					deck_manager_focused_card = -1;
				}
				
				if (_input_manager.mouse_left_pressed && (deck_manager_focused_card > 0))
				{
					scr_add_card_from_inventory_to_deck(deck_manager_focused_card);
				}
				
				if (scr_mouse_hover(clear_button_start_x, clear_button_start_y, clear_button_width, clear_button_height))
				{
					if (_input_manager.mouse_left_pressed)
					{
						scr_deck_clear();
					}
				}
				
				if (scr_mouse_hover(remove_button_start_x - 1, remove_button_start_y - 1, remove_button_width + 2, (remove_button_sep_y * (_inventory_manager.card_type_in_deck_count - 1)) + remove_button_height + 2))
				{
					if ((_input_manager.mouse_y_position - (remove_button_start_y - 1)) % remove_button_sep_y <= 9)
					{
						deck_focused_removed = floor((_input_manager.mouse_y_position - (remove_button_start_y - 1)) / remove_button_sep_y);
					}
					else
					{
						deck_focused_removed = -1;
					}
				}
				else
				{
					deck_focused_removed = -1;
				}
				
				if (_inventory_manager.card_deck_count == 0)
				{
					deck_focused_remove = -1;
				}
				
				if (_input_manager.mouse_left_pressed && deck_focused_removed != -1)
				{
					scr_remove_card_from_deck_to_inventory(_inventory_manager.card_type_in_deck[deck_focused_removed]);
				}
				
				if ((_input_manager.mouse_x_position >= 483) && (_input_manager.mouse_x_position <= 491))
				{
					if ((_input_manager.mouse_y_position >= 181) && (_input_manager.mouse_y_position <= 208))
					{
						if (_input_manager.mouse_left_pressed)
						{
							if ((_input_manager.mouse_y_position - 181) % 11 <= 8)
							{
								deck_manager_card_start_row = floor((_input_manager.mouse_y_position - 181) / 11) + 1;
							}
						}
					}
				}
				
				if (_input_manager.mouse_scroll_up)
				{
					deck_manager_card_start_row = scr_range(deck_manager_card_start_row - 1, 1, 3);
				}
				
				if (_input_manager.mouse_scroll_down)
				{
					deck_manager_card_start_row = scr_range(deck_manager_card_start_row + 1, 1, 3);
				}
				#endregion
				
				break;
				
			case 1:
				#region Credit Conversion
				
				sell_button_focus = scr_mouse_hover(sell_button_start_x, sell_button_start_y, sell_button_width, sell_button_height);
				
				if (scr_mouse_hover(credit_exchange_card_start_x, credit_exchange_card_start_y, (CARD_WIDTH * 4) + 48, (CARD_HEIGHT * 3) + 32))
				{
					if (((_input_manager.mouse_x_position - credit_exchange_card_start_x) % (CARD_WIDTH + 16) <= CARD_WIDTH) && ((_input_manager.mouse_y_position - credit_exchange_card_start_y) % (CARD_HEIGHT + 16) <= CARD_HEIGHT))
					{
						credit_exchange_focused_column = floor((_input_manager.mouse_x_position - credit_exchange_card_start_x) / (CARD_WIDTH + 16));
						credit_exchange_focused_row = floor((_input_manager.mouse_y_position - credit_exchange_card_start_y) / (CARD_HEIGHT + 16));
						credit_exchange_focused_card = 100 + ((credit_exchange_card_start_row - 1) * 4) + (credit_exchange_focused_column + 1) + (4 * credit_exchange_focused_row);
					}
					else
					{
						credit_exchange_focused_card = -1;
					}
				}
				else
				{
					credit_exchange_focused_card = -1;
				}
				
				if (_input_manager.mouse_left_pressed && (credit_exchange_focused_card > 100))
				{
					if (_inventory_manager.item_inventory[credit_exchange_focused_card][1] - _inventory_manager.item_inventory[credit_exchange_focused_card][2] > 0)
					{
						_inventory_manager.item_inventory[credit_exchange_focused_card][2]++;
						var _found = false;
						for (var _i = 0; _i < card_types_in_sales_count; _i++)
						{
							if(card_types_in_sales[_i][0] == credit_exchange_focused_card)
							{
								_found = true;
								var _index = _i;
								break;	
							}
						}
		
						if (!_found)
						{
							card_types_in_sales[card_types_in_sales_count][0] = credit_exchange_focused_card;
							card_types_in_sales[card_types_in_sales_count][1] = 1;
							card_types_in_sales_count++;
						}
						else
						{
							card_types_in_sales[_index][1]++;
						}
		
						sales[sales_count] = credit_exchange_focused_card;
						sales_count++;
						
						sales_value_total += scr_card_value(credit_exchange_focused_card);
					}
				}
				
				if (scr_mouse_hover(sell_button_start_x, sell_button_start_y, sell_button_width, sell_button_height))
				{
					if (_input_manager.mouse_left_pressed)
					{
						scr_generate_item_found_array();
						for (var _i = 0; _i < sales_count; _i++)
						{
							scr_sell_item_card(sales[_i]);
						}
						sales = [];
						sales_count = 0;
						card_types_in_sales = [];
						card_types_in_sales_count = 0;
					}
				}
				
				if ((_input_manager.mouse_x_position >= 483) && (_input_manager.mouse_x_position <= 491))
				{
					if ((_input_manager.mouse_y_position >= 98) && (_input_manager.mouse_y_position <= 304))
					{
						if (_input_manager.mouse_left_pressed)
						{
							if ((_input_manager.mouse_y_position - 98) % 11 <= 8)
							{
								credit_exchange_card_start_row = floor((_input_manager.mouse_y_position - 98) / 11) + 1;
							}
						}
					}
				}
				
				if (_input_manager.mouse_scroll_up)
				{
					credit_exchange_card_start_row = scr_range(credit_exchange_card_start_row - 1, 1, 18);
				}
				
				if (_input_manager.mouse_scroll_down)
				{
					credit_exchange_card_start_row = scr_range(credit_exchange_card_start_row + 1, 1, 18);
				}
				
				#endregion
				
				break;
				
			case 2:
				#region Booster Menu
				
				if (booster_generated == false)
				{
					if (scr_mouse_hover(NATIVE_RESOLUTION_WIDTH * 0.25 - 59, 70, 436, 80))
					{
						if ((_input_manager.mouse_x_position - (NATIVE_RESOLUTION_WIDTH * 0.25 - 59)) % 159 <= 118)
						{
							focused_booster = floor((_input_manager.mouse_x_position - (NATIVE_RESOLUTION_WIDTH * 0.25 - 59)) / 159);
						}
						else
						{
							focused_booster = -1;
						}
					}
					else
					{
						focused_booster = -1;
					}

					if (_input_manager.mouse_left_pressed && (focused_booster != -1))
					{
						booster_paid = false;
						switch (focused_booster)
						{
							case 0:
								if (global.player_coin >= 10)
								{
									global.player_coin -= 10;
									booster_paid = true;
								}
								break;
								
							case 1:
								if (global.player_coin >= 20)
								{
									global.player_coin -= 20;
									booster_paid = true;
								}
								break;
						}
						
						if (booster_paid)
						{
							generated_cards = scr_booster_generate(focused_booster);
							card1_sprite = asset_get_index("spr_card_" + string(generated_cards[0]));
							card2_sprite = asset_get_index("spr_card_" + string(generated_cards[1]));
							card3_sprite = asset_get_index("spr_card_" + string(generated_cards[2]));
							scr_inventory_add(generated_cards[0], 1);
							scr_inventory_add(generated_cards[1], 1);
							scr_inventory_add(generated_cards[2], 1);
							booster_generated = true;
							booster_animation_ended = false;
							frame_since_booster_ended = 0;
							card1_lerp_progress = 0;
							card2_lerp_progress = 0;
							card3_lerp_progress = 0;
							card1_x1 = NATIVE_GUI_RESOLUTION_WIDTH / 4; 
							card1_y1 = floor(NATIVE_GUI_RESOLUTION_HEIGHT / 2);
							card1_x2 = NATIVE_GUI_RESOLUTION_WIDTH / 4; 
							card1_y2 = floor(NATIVE_GUI_RESOLUTION_HEIGHT / 2);

							card2_x1 = NATIVE_GUI_RESOLUTION_WIDTH / 2; 
							card2_y1 = floor(NATIVE_GUI_RESOLUTION_HEIGHT / 2);
							card2_x2 = NATIVE_GUI_RESOLUTION_WIDTH / 2; 
							card2_y2 = floor(NATIVE_GUI_RESOLUTION_HEIGHT / 2);

							card3_x1 = 3 * NATIVE_GUI_RESOLUTION_WIDTH / 4; 
							card3_y1 = floor(NATIVE_GUI_RESOLUTION_HEIGHT / 2);
							card3_x2 = 3 * NATIVE_GUI_RESOLUTION_WIDTH / 4; 
							card3_y2 = floor(NATIVE_GUI_RESOLUTION_HEIGHT / 2);
						}
						else
						{
							show_debug_message("Not enough money.")
						}
					}
				}
				else
				{
					if (scr_mouse_hover(card1_x1, card1_y1, CARD_WIDTH, CARD_HEIGHT))
					{
						gacha_result_card_focus = 0;
					}
					else if (scr_mouse_hover(card2_x1, card2_y1, CARD_WIDTH, CARD_HEIGHT))
					{
						gacha_result_card_focus = 1;
					}
					else if (scr_mouse_hover(card3_x1, card3_y1, CARD_WIDTH, CARD_HEIGHT))
					{
						gacha_result_card_focus = 2;
					}
					else
					{
						gacha_result_card_focus = -1;
					}
					
					if (booster_animation_ended && (_input_manager.mouse_left_pressed || _input_manager.key_back))
					{
						booster_generated = false;
					}
				}
				
				#endregion
				break;
				
			case 3:
			
				#region Quest Menu
				
				if (scr_mouse_hover(quest_option_start_x, quest_option_start_y, quest_option_width, (quest_option_gap * 4) + quest_option_height))
				{
					if (!quest_detail_show)
					{
						if ((_input_manager.mouse_y_position - quest_option_start_y) % quest_option_gap < quest_option_height)
						{
							quest_option_focus = floor((_input_manager.mouse_y_position - quest_option_start_y) / quest_option_gap);
						
							if (_input_manager.mouse_left_pressed)
							{
								quest_detail_show = true;
							}
						}
						else
						{
							quest_option_focus = -1;
						}
					}
					else if (quest_detail_show)
					{
						if ((_input_manager.mouse_y_position - quest_option_start_y) % quest_option_gap < quest_option_height)
						{
							if (_input_manager.mouse_left_pressed)
							{
								quest_option_focus = floor((_input_manager.mouse_y_position - quest_option_start_y) / quest_option_gap);
								quest_detail_show = true;
							}
						}
					}
				}
				else if (quest_detail_show)
				{
					
				}
				else
				{
					quest_option_focus = -1;
				}
				
				if (quest_detail_show)
				{
					if (scr_mouse_hover(quest_detail_start_x + 8, quest_detail_start_y + 196, 60, 24))
					{
						if (_inventory_manager.item_inventory[quest_id[quest_option_focus]][1] >= 5)
						{
							quest_submit_focus = 1;
						}
						else
						{
							quest_submit_focus = 0;
						}
					}
					else
					{
						quest_submit_focus = 0;
					}
					
					if (_input_manager.mouse_left_pressed && quest_submit_focus)
					{
						_inventory_manager.item_inventory[quest_id[quest_option_focus]][1] -= 5;
						quest_status[quest_option_focus] = 1;
						audio_play_sound(snd_quest_complete, 100, false);
					}
				}
				
				#endregion
			
				break;
		}
	}
	
	if ((_input_manager.mouse_right_pressed || _input_manager.key_back) && !instance_exists(obj_text))
	{
		if (current_menu_level == 1)
		{
			if (menu_0_focus == 1)
			{
				for (var _i = 0; _i < card_types_in_sales_count; _i++)
				{
					for (var _j = 0; _j < card_types_in_sales[_i][1]; _j++)
					{
						_inventory_manager.item_inventory[card_types_in_sales[_i][0]][2]--;
					}
				}
				sales_value_total = 0;
				sales = [];
				sales_count = 0;
				card_types_in_sales = [];
				card_types_in_sales_count = 0;
			}
			else if (menu_0_focus == 3)
			{
				if (quest_detail_show)
				{
					quest_option_focus = -1;
					quest_detail_show = false;
					current_menu_level++;
				}
			}
		}
		
		current_menu_level--;
			
		if (current_menu_level < 0)
		{
			current_menu_level = 0;
			global.game_paused = !global.game_paused;
			
			with (all)
			{
				game_paused_image_speed = image_speed;
				image_speed = 0;
			}
				
			show_menu_ui = false;
		}
	}
}

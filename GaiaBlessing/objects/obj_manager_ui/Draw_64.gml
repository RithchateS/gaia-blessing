/// @description Draw Game UI

var _input_manager = global.instance_manager_input;
var _card_manager = global.instance_manager_card;
var _deck_manager = global.instance_manager_deck;
var _inventory_manager = global.instance_manager_inventory;

display_set_gui_size(NATIVE_GUI_RESOLUTION_WIDTH, NATIVE_GUI_RESOLUTION_HEIGHT);

scr_text_setup(global.font_large, fa_left, fa_top, c_white);
draw_text(10, 10, "Day " + string(global.game_day));

draw_text(10, 30, "Credits: " + string(global.player_coin));

#region Buff HUD Display

if (obj_player.buffs_in_play > 0)
{
	for (var _i = 0; _i < obj_player.buffs_in_play; _i++)
	{
		var _image_index = scr_find_buff_index(obj_player.applied_buff[_i]);
		draw_sprite(spr_gui_player_buff, _image_index, 8 + ((_i) * 20), NATIVE_GUI_RESOLUTION_HEIGHT - 60);
	}
}

#endregion

#region CARD HUD Display and Controls

if (show_cards && !global.game_paused)
{	
	// Drawing Cards on screen
	for (var _k = 0; _k < card_to_display_amount; _k++) 
	{
		if (_k != focused_card)
		{
			draw_sprite(card_to_display[_k], 0, (NATIVE_GUI_RESOLUTION_WIDTH * 0.5) - ((card_to_display_amount - 1) * 0.48 * (CARD_WIDTH)) + (_k * 0.96 * CARD_WIDTH), NATIVE_GUI_RESOLUTION_HEIGHT + 10);
		}
	}
	
	// Separate from for loop to ensure that focused card is drawn on top.
	var _focused_card_origin_x = (NATIVE_GUI_RESOLUTION_WIDTH * 0.5) - ((card_to_display_amount - 1) * 0.48 * (CARD_WIDTH)) + (focused_card * 0.96 * CARD_WIDTH);
	var _focused_card_origin_y = NATIVE_GUI_RESOLUTION_HEIGHT - 15;
	
	if (focused_card != -1)
	{
		if (_input_manager.mouse_left_pressed)
		{
			focused_x_difference = _input_manager.mouse_x_position - _focused_card_origin_x;
			focused_y_difference = _input_manager.mouse_y_position - _focused_card_origin_y;
			focused_card_hold = true;
		}
		
		if (focused_card_hold)
		{
			 _focused_card_origin_x = _input_manager.mouse_x_position - focused_x_difference;
			 _focused_card_origin_y = _input_manager.mouse_y_position - focused_y_difference;
		}
		
		if (_input_manager.mouse_left_released)
		{
			if (_focused_card_origin_y < NATIVE_GUI_RESOLUTION_HEIGHT - (CARD_HEIGHT * 1.2))
			{
				_card_manager.activated_card_slot = focused_card + 1;
				_card_manager.activated_card_id = _deck_manager.daily_deck[_deck_manager.active_hand[focused_card + 1]][0];
				_card_manager.alarm[0] = 2;
				focused_card = -1;
				focused_card_hold = false;
			}
			else
			{
				_focused_card_origin_x = (NATIVE_GUI_RESOLUTION_WIDTH * 0.5) - ((card_to_display_amount - 1) * 0.48 * (CARD_WIDTH)) + (focused_card * 0.96 * CARD_WIDTH);
				_focused_card_origin_y = NATIVE_GUI_RESOLUTION_HEIGHT - 15;
				focused_card_hold = false;
			}
		}
		
		if (focused_card != -1)
		{
			draw_sprite(card_to_display[focused_card], 0, _focused_card_origin_x, _focused_card_origin_y);
			card_information = scr_card_info(_deck_manager.daily_deck[_deck_manager.active_hand[focused_card + 1]][0]);
			
			if (card_information[0] != 0)
			{
				var _index_to_display = scr_tooltip_info(card_information[0])[0];
				var _tooltip_text = scr_tooltip_info(card_information[0])[1];
			
				scr_text_setup(global.font_large, fa_left, fa_top, c_white);
				var _tooltip_width = string_width_ext(_tooltip_text, 12, 170);
				var _tooltip_height = string_height_ext(_tooltip_text, 12, 170);

				if (_focused_card_origin_x + (0.48 * CARD_WIDTH) + (_tooltip_width + 10) < NATIVE_GUI_RESOLUTION_WIDTH)
				{
					scr_text_setup(global.font_large, fa_left, fa_top, c_white);
					draw_set_alpha(0.9);
					draw_sprite_stretched(spr_ui_option_background, 0, _focused_card_origin_x + (0.48 * CARD_WIDTH) + 4, _focused_card_origin_y - CARD_HEIGHT, _tooltip_width + 10, _tooltip_height + 20);
					draw_sprite(spr_gui_player_buff, _index_to_display, _focused_card_origin_x + (0.48 * CARD_WIDTH) + 8, _focused_card_origin_y - CARD_HEIGHT + 4);
					draw_text_ext(_focused_card_origin_x + (0.48 * CARD_WIDTH) + 8, _focused_card_origin_y - CARD_HEIGHT + 17, _tooltip_text, 12, 170);
					draw_set_alpha(1.0);
				}
				else
				{
					scr_text_setup(global.font_large, fa_left, fa_top, c_white);
					
					/*
					draw_sprite_stretched(spr_ui_option_background, 0, _focused_card_origin_x - (0.48 * CARD_WIDTH) - _tooltip_width - 14, _focused_card_origin_y - CARD_HEIGHT, _tooltip_width + 10, _tooltip_height + 20);
					draw_sprite(spr_gui_player_buff, _index_to_display, _focused_card_origin_x - (0.48 * CARD_WIDTH) - 22, _focused_card_origin_y - CARD_HEIGHT + 4);
					draw_text_ext(_focused_card_origin_x - (0.48 * CARD_WIDTH) - 8, _focused_card_origin_y - CARD_HEIGHT + 17, _tooltip_text, 12, 170);
					*/
					draw_set_alpha(0.9);
					draw_sprite_stretched(spr_ui_option_background, 0, _focused_card_origin_x - (0.48 * CARD_WIDTH) - _tooltip_width - 14, _focused_card_origin_y - CARD_HEIGHT, _tooltip_width + 10, _tooltip_height + 20);
					draw_sprite(spr_gui_player_buff, _index_to_display, _focused_card_origin_x - (0.48 * CARD_WIDTH) - _tooltip_width - 10, _focused_card_origin_y - CARD_HEIGHT + 4);
					draw_text_ext(_focused_card_origin_x - (0.48 * CARD_WIDTH) - _tooltip_width - 10, _focused_card_origin_y - CARD_HEIGHT + 17, _tooltip_text, 12, 170);
					draw_set_alpha(1.0);
				}
			}
		}
	}
}

#endregion

#region Pause and Computer Menu

draw_set_color(c_white);
draw_set_alpha(pause_menu_alpha);
draw_sprite(spr_ui_menu_background_base, 0, 0, 0);

draw_set_alpha(0.9);
draw_sprite(spr_ui_menu_background_border, 0, 0, pause_menu_border_top_current_y);
draw_sprite(spr_ui_menu_background_border, 0, 0, pause_menu_border_bottom_current_y);

if (pause_menu_alpha > 0.7)
{
	scr_text_setup(global.font_large, fa_center, fa_middle, c_white);
	draw_text(NATIVE_GUI_RESOLUTION_WIDTH * 0.5, NATIVE_GUI_RESOLUTION_HEIGHT * 0.5, "The game is paused.")
}

// Genertic
draw_set_color(c_white);
draw_set_alpha(menu_background_alpha);
draw_sprite(spr_ui_menu_background_base, 0, 0, 0);

draw_set_alpha(0.9);
draw_sprite(spr_ui_menu_background_border, 0, 0, menu_border_top_current_y);
draw_sprite(spr_ui_menu_background_border, 0, 0, menu_border_bottom_current_y);
draw_sprite_stretched(spr_ui_menu_button_background, menu_button_back_focus, menu_button_back_current_x, menu_button_back_current_y, menu_button_back_width, menu_button_back_height);
scr_text_setup(global.font_large, fa_center, fa_top, c_white);
draw_text(menu_button_back_current_x + menu_button_back_width - 27, menu_button_back_current_y + 4, "Back");
draw_sprite(spr_ui_button_escape, 0, menu_button_back_current_x + 13,  menu_button_back_current_y + 5);

draw_sprite_stretched(spr_ui_menu_button_background, menu_button_farm_focus, menu_button_farm_current_x, menu_button_farm_current_y, menu_button_farm_width, menu_button_farm_height);
scr_text_setup(global.font_large, fa_center, fa_top, c_white);
draw_text(menu_button_farm_current_x + menu_button_farm_width - 27, menu_button_farm_current_y + 4, "Farm");
draw_sprite(spr_ui_button_f, 0, menu_button_farm_current_x + 16,  menu_button_farm_current_y + 5);

draw_sprite(spr_ui_menu_name_background, 0, 0, menu_0_current_y);
draw_sprite(spr_ui_menu_name_background, 0, 0, menu_1_current_y);
draw_sprite(spr_ui_menu_name_background, 0, 0, menu_2_current_y);

draw_set_alpha(1.0);
scr_text_setup(global.font_large, fa_center, fa_top, c_white);
draw_text(69, menu_0_current_y + 5, "Menu");
draw_text(69, menu_1_current_y + 5, menu_1_title);

scr_text_setup(global.font_large, fa_center, fa_middle, c_white);

if (current_menu_level == 0)
{
	for (var _i = 0; _i < 6; _i ++)
	{
		if (_i != menu_0_focus)
		{
			draw_set_alpha(menu_background_alpha);
			draw_sprite_stretched(spr_ui_menu_option_background, 0, menu_0_array_start_x + ((_i % 3) * menu_0_sep_x) + menu_0_option_current_x, menu_0_array_start_y + (floor(_i / 3) * menu_0_sep_y) + menu_0_option_current_y, menu_0_option_current_width, menu_0_option_current_height);
		}
		else
		{
			draw_set_alpha(menu_background_alpha);
			draw_sprite_stretched(spr_ui_menu_option_background, 1, menu_0_array_start_x + ((_i % 3) * menu_0_sep_x) + menu_0_option_current_x, menu_0_array_start_y + (floor(_i / 3) * menu_0_sep_y) + menu_0_option_current_y, menu_0_option_current_width, menu_0_option_current_height);
		}
		draw_text(menu_0_array_start_x + ((_i % 3) * menu_0_sep_x) + (menu_0_option_width * 0.5), menu_0_array_start_y + (floor(_i / 3) * menu_0_sep_y) + (menu_0_option_height * 0.5), computer_option[_i]);
	}
}

draw_set_alpha(0.9);
draw_sprite_stretched(spr_ui_deck_manager_tabs, deck_manager_tab_focus, deck_manager_start_x, deck_manager_start_y, deck_manager_current_width, deck_manager_current_height);
draw_sprite_stretched(spr_ui_credit_exchange_tab, 0, credit_exchange_start_x, credit_exchange_start_y, credit_exchange_current_width, credit_exchange_current_height);
draw_sprite_stretched(spr_ui_menu_option_background, 1, deck_status_start_x, deck_status_start_y, deck_status_current_width, deck_status_current_height);
draw_sprite_stretched(spr_ui_menu_option_background, 1, sales_start_x, sales_start_y, sales_current_width, sales_current_height);

draw_sprite_stretched(spr_ui_menu_option_background, 0, booster_menu_start_x, booster_menu_start_y, booster_menu_current_width, booster_menu_current_height);

draw_sprite_stretched(spr_ui_menu_option_background, 0,quest_menu_start_x, quest_menu_start_y, quest_menu_current_width, quest_menu_current_height);

draw_set_alpha(1.0);
scr_text_setup(global.font_large, fa_center, fa_top, c_white);

if (current_menu_level == 1)
{
	switch (menu_0_focus)
	{
		case 0:
			#region Deck Manager
			
			for (var _i = 0; _i < 5; _i++)
			{
				draw_text(deck_manager_start_x + (_i * deck_manager_tab_width) + (deck_manager_tab_width * 0.5), deck_manager_start_y + 5, deck_manager_tabs[_i]);
			}
		
			if (deck_manager_lerp_progress > 0.7)
			{
				scr_text_setup(global.font_large, fa_left, fa_top, c_white);
				draw_text(deck_status_start_x + 11, deck_status_start_y + 5, "Deck");
			
				scr_text_setup(global.font_large, fa_right, fa_top, c_white);
				draw_text(deck_status_start_x + deck_status_current_width - 7, deck_status_start_y + 5, string(_inventory_manager.card_deck_count) + "/15");
			
				for (var _i = 0; _i < 12; _i++)
				{
					if (_inventory_manager.card_inventory[_i + 1 + (deck_manager_tab_focus * 20) + ((deck_manager_card_start_row - 1) * 4)][0] != false)
					{
						var _sprite = asset_get_index("spr_card_" + string(_i + 1 + (deck_manager_tab_focus * 20) + ((deck_manager_card_start_row - 1) * 4)));
					}
					else
					{
						var _sprite = asset_get_index("spr_card_mystery");
					}
	
					if (_inventory_manager.card_inventory[_i + 1 + (deck_manager_tab_focus * 20) + ((deck_manager_card_start_row - 1) * 4)][1] - _inventory_manager.card_inventory[_i + 1 + (deck_manager_tab_focus * 20) + ((deck_manager_card_start_row - 1) * 4)][2] == 0)
					{
						draw_sprite(_sprite, 1, 28 + (CARD_WIDTH * 0.5) + ((_i % 4) * (CARD_WIDTH + 16)), 86 + CARD_HEIGHT + (floor(_i / 4) * (CARD_HEIGHT + 16)));
					}
					else
					{
						draw_sprite(_sprite, 0, 28 + (CARD_WIDTH * 0.5) + ((_i % 4) * (CARD_WIDTH + 16)), 86 + CARD_HEIGHT + (floor(_i / 4) * (CARD_HEIGHT + 16)));
					}
					
					if (_i + 1 + (deck_manager_tab_focus * 20) + ((deck_manager_card_start_row - 1) * 4) == deck_highlight)
					{
						draw_sprite(spr_ui_card_highlight, 0, 28 + (CARD_WIDTH * 0.5) + ((_i % 4) * (CARD_WIDTH + 16)), 87 + CARD_HEIGHT + (floor(_i / 4) * (CARD_HEIGHT + 16)));
					}
	
					scr_text_setup(global.font_number_large, fa_left, fa_top, c_white);
	
					draw_text(28 + (CARD_WIDTH * 0.95) + ((_i % 4) * (CARD_WIDTH + 16)), 78 + CARD_HEIGHT + (floor(_i / 4) * (CARD_HEIGHT + 16)), string(_inventory_manager.card_inventory[_i + 1 + (deck_manager_tab_focus * 20) + ((deck_manager_card_start_row - 1) * 4)][1] - _inventory_manager.card_inventory[_i + 1 + (deck_manager_tab_focus * 20) + ((deck_manager_card_start_row - 1) * 4)][2]));
				}

				for (var _i = 1; _i <= 3; _i++)
				{
					if (deck_manager_card_start_row == _i)
					{
						draw_sprite(spr_ui_scroll_bar, 0, 484, 98 + (11 * (_i - 1)) + 83);
					}
					else
					{
						draw_sprite(spr_ui_scroll_bar, 1, 484, 98 + (11 * (_i - 1)) + 83);
					}
				}
			
				draw_sprite_stretched(spr_ui_menu_button_background, clear_button_focus, clear_button_start_x, clear_button_start_y, clear_button_width, clear_button_height); // Clear Button
				scr_text_setup(global.font_large, fa_center, fa_top, c_white);
				draw_text(clear_button_start_x + (clear_button_width * 0.5), clear_button_start_y + 5, "Clear");
			
				for (var _i = 0; _i < _inventory_manager.card_type_in_deck_count; _i++)
				{	
					scr_text_setup(global.font_capital, fa_left, fa_top, c_white);
					draw_text(521, 57 + 32 + (_i * 12), scr_card_name(_inventory_manager.card_type_in_deck[_i]));
					scr_text_setup(global.font_capital, fa_right, fa_top, c_white);
					draw_text(618, 57 + 32 + (_i * 12), "x" + string(_inventory_manager.card_inventory[_inventory_manager.card_type_in_deck[_i]][2]));
				
					draw_sprite(spr_ui_deck_remove, 0, remove_button_start_x, remove_button_start_y + (_i * remove_button_sep_y));
				}

				if (deck_manager_focused_card > 0)
				{
					if (_inventory_manager.card_inventory[deck_manager_focused_card][0] == true)
					{
						var _falvour_text = scr_card_flavor_text(deck_manager_focused_card);
					}
					else
					{
						var _falvour_text = "???";
					}
				
					scr_text_setup(global.font_large, fa_left, fa_top, c_white);
					draw_text(10, NATIVE_GUI_RESOLUTION_HEIGHT - ui_tab_height + 6, _falvour_text);
				}
				
				if (deck_highlight > 0)
				{
					if (_inventory_manager.card_inventory[deck_highlight][0] == true)
					{
						var _falvour_text = scr_card_flavor_text(deck_highlight);
					}
					else
					{
						var _falvour_text = "???";
					}
				
					scr_text_setup(global.font_large, fa_left, fa_top, c_white);
					draw_text(10, NATIVE_GUI_RESOLUTION_HEIGHT - ui_tab_height + 6, _falvour_text);
				}
			}
			
			if (show_farm_status)
			{
				draw_set_alpha(0.7);
				draw_set_color(c_black);
				draw_rectangle(0, 0, NATIVE_GUI_RESOLUTION_WIDTH, NATIVE_GUI_RESOLUTION_HEIGHT, false);
				
				draw_set_alpha(1.0);
				draw_set_color(c_white);
			}
			
			draw_sprite_stretched(spr_ui_menu_button_background, 0, farm_status_start_x, farm_status_start_y, farm_status_current_width, farm_status_current_height);
				
			if (farm_status_lerp_progress > 0.7)
			{
				scr_text_setup(global.font_large, fa_left, fa_top, c_white);
				draw_text(farm_status_start_x + 120, farm_status_start_y + 6, "Crop Type");
					
				scr_text_setup(global.font_large, fa_center, fa_top, c_white);
				draw_text(farm_status_start_x + 260, farm_status_start_y + 6, "Growth");
				draw_text(farm_status_start_x + 330, farm_status_start_y + 6, "Nutrient");
				draw_text(farm_status_start_x + 400, farm_status_start_y + 6, "Endurance");
				draw_text(farm_status_start_x + 455, farm_status_start_y + 6, "Rank");
					
				for (var _i = 1; _i <= 12; _i++)
				{
					scr_text_setup(global.font_small, fa_left, fa_top, c_white);
					draw_text(farm_status_start_x + 10, farm_status_start_y + 16 + (_i * 18), "Farm Slot " + string(_i));
					draw_text(farm_status_start_x + 120, farm_status_start_y + 16 + (_i * 18), scr_crop_info(global.instance_manager_farm.farm_slot[_i][0])[0]);
						
					scr_text_setup(global.font_small, fa_center, fa_top, c_white);
						
					if (global.instance_manager_farm.farm_slot[_i][1] != -1)
					{
						draw_text(farm_status_start_x + 260, farm_status_start_y + 16 + (_i * 18), string(global.instance_manager_farm.farm_slot[_i][1]) + "/" + string(global.instance_manager_farm.farm_slot[_i][2]));
						if (global.instance_manager_farm.farm_slot[_i][7] == 3)
						{
							draw_text(farm_status_start_x + 330, farm_status_start_y + 16 + (_i * 18), "Maxed");
						}
						else
						{
							draw_text(farm_status_start_x + 330, farm_status_start_y + 16 + (_i * 18), string(global.instance_manager_farm.farm_slot[_i][3]) + "/" + string(global.instance_manager_farm.farm_slot[_i][4]));
						}
						draw_text(farm_status_start_x + 400, farm_status_start_y + 16 + (_i * 18), string(global.instance_manager_farm.farm_slot[_i][5]) + "/" + string(global.instance_manager_farm.farm_slot[_i][6]));
						draw_text(farm_status_start_x + 455, farm_status_start_y + 16 + (_i * 18), string(global.instance_manager_farm.farm_slot[_i][7] + 1));
					}
					else
					{
						draw_text(farm_status_start_x + 260, farm_status_start_y + 16 + (_i * 18), "-");
						draw_text(farm_status_start_x + 330, farm_status_start_y + 16 + (_i * 18), "-");
						draw_text(farm_status_start_x + 400, farm_status_start_y + 16 + (_i * 18), "-");
						draw_text(farm_status_start_x + 455, farm_status_start_y + 16 + (_i * 18), "-");
					}
					
					draw_sprite_stretched(spr_ui_horizontal_line, 0, farm_status_start_x + 10, farm_status_start_y + 28 + (_i * 18), farm_status_width - 20, 2);
				}
			}
			
			
			#endregion
			
			break;
			
		case 1:
			#region Credit Exchange

			draw_text(credit_exchange_start_x + (credit_exchange_tab_width * 0.5), credit_exchange_start_y + 5, "Crops");
			
			if (credit_exchange_lerp_progress > 0.7)
			{
				scr_text_setup(global.font_large, fa_left, fa_top, c_white);
				draw_text(sales_start_x + 11, sales_start_y + 5, "Selling...");
				draw_text(sales_start_x + 11, sell_button_start_y - 16, "Value: " + string(sales_value_total));
				
				//scr_text_setup(fnt_gui_dialogue_text, fa_right, fa_top, c_white);
				draw_text(sales_start_x + 11, sales_start_y - 16, "Credit: " + string(global.player_coin));
				
				draw_sprite_stretched(spr_ui_menu_button_background, sell_button_focus, sell_button_start_x, sell_button_start_y, sell_button_width, sell_button_height); // Clear Button
				scr_text_setup(global.font_large, fa_center, fa_top, c_white);
				draw_text(sell_button_start_x + (sell_button_width * 0.5), sell_button_start_y + 5, "Sell");
				
				for (var _i = 0; _i < 12; _i++)
				{
					if (_inventory_manager.item_inventory[_i + 101 + ((credit_exchange_card_start_row - 1) * 4)][0] != false)
					{
						var _sprite = asset_get_index("spr_card_" + string(floor(_i / 4) + 101 + ((credit_exchange_card_start_row - 1) * 4)));
					}
					else
					{
						var _sprite = asset_get_index("spr_card_mystery");
					}
					
					draw_sprite(_sprite, _i % 4, 28 + (CARD_WIDTH * 0.5) + ((_i % 4) * (CARD_WIDTH + 16)), 86 + CARD_HEIGHT + (floor(_i / 4) * (CARD_HEIGHT + 16)));
	
					scr_text_setup(global.font_number_large, fa_left, fa_top, c_white);
	
					draw_text(28 + (CARD_WIDTH * 0.95) + ((_i % 4) * (CARD_WIDTH + 16)), 78 + CARD_HEIGHT +  (floor(_i / 4) * (CARD_HEIGHT + 16)), string(_inventory_manager.item_inventory[_i + 101 + ((credit_exchange_card_start_row - 1) * 4)][1] - _inventory_manager.item_inventory[_i + 101 + ((credit_exchange_card_start_row - 1) * 4)][2]));
				}
				
				if (credit_exchange_focused_card > 0)
				{
					if (_inventory_manager.item_inventory[credit_exchange_focused_card][0] == true)
					{
						var _falvour_text = scr_card_flavor_text(credit_exchange_focused_card);
					}
					else
					{
						var _falvour_text = "???";
					}
				
					scr_text_setup(global.font_large, fa_left, fa_top, c_white);
					draw_text(10, NATIVE_GUI_RESOLUTION_HEIGHT - ui_tab_height + 6, _falvour_text);
				}
				
				for (var _i = 1; _i <= 18; _i++)
				{
					if (credit_exchange_card_start_row == _i)
					{
						draw_sprite(spr_ui_scroll_bar, 0, 484, 98 + (11 * (_i - 1)));
					}
					else
					{
						draw_sprite(spr_ui_scroll_bar, 1, 484, 98 + (11 * (_i - 1)));
					}
				}
			
				for (var _i = 0; _i < card_types_in_sales_count; _i++)
				{	
					var _name = scr_card_name(card_types_in_sales[_i][0]);

					scr_text_setup(global.font_capital, fa_left, fa_top, c_white);
					draw_text(521, 57 + 32 + (_i * 12), _name);
					scr_text_setup(global.font_capital, fa_right, fa_top, c_white);
					draw_text(618, 57 + 32 + (_i * 12), "x" + string(card_types_in_sales[_i][1]));
				}
				
			}
			
			#endregion
			
			break;
		
		
		case 2:
			#region Booster Packs
			
			if (booster_menu_lerp_progress > 0.7)
			{
			
				scr_text_setup(global.font_large, fa_left, fa_top, c_white);
				draw_text(booster_menu_start_x + 11, booster_menu_start_y + 5, "Credit: " + string(global.player_coin));
			
				draw_sprite(spr_booster_seed_81_100, 0, NATIVE_RESOLUTION_WIDTH * 0.25 - 59, 70);
				scr_text_setup(global.font_large, fa_center, fa_top, c_white);
				draw_text(NATIVE_RESOLUTION_WIDTH * 0.25, 155, "Price: 10");

				draw_sprite(spr_booster_pack, 1, NATIVE_RESOLUTION_WIDTH * 0.5 - 59, 70);
				scr_text_setup(global.font_large, fa_center, fa_top, c_white);
				draw_text(NATIVE_RESOLUTION_WIDTH * 0.5, 155, "Price: 20");

				draw_sprite(spr_booster_pack, 2, NATIVE_RESOLUTION_WIDTH * 0.75 - 59, 70);
				scr_text_setup(global.font_large, fa_center, fa_top, c_white);
				draw_text(NATIVE_RESOLUTION_WIDTH * 0.75, 155, "Price: 30");
				draw_text(NATIVE_RESOLUTION_WIDTH * 0.75, 170, "(Not Implemented yet)");
			
			}

			if (booster_generated)
			{
				draw_set_color(c_black);
				draw_set_alpha(0.75);
				draw_rectangle(0, 0, NATIVE_GUI_RESOLUTION_WIDTH, NATIVE_GUI_RESOLUTION_HEIGHT, false);
	
				draw_set_alpha(1);
				
				
				draw_sprite_stretched(card1_sprite, 0, card1_x1, card1_y1, card1_x2 - card1_x1, card1_y2 - card1_y1);
				draw_sprite_stretched(card2_sprite, 0, card2_x1, card2_y1, card2_x2 - card2_x1, card2_y2 - card2_y1);
				draw_sprite_stretched(card3_sprite, 0, card3_x1, card3_y1, card3_x2 - card3_x1, card3_y2 - card3_y1);
				scr_text_setup(global.font_large, fa_center, fa_top, c_white);
				draw_text( NATIVE_GUI_RESOLUTION_WIDTH / 2, 70, "You got 3 Cards!");
				draw_text( NATIVE_GUI_RESOLUTION_WIDTH / 2, NATIVE_GUI_RESOLUTION_HEIGHT - 80, "Left Click to Continue");
			}
			
			if (gacha_result_card_focus > -1)
				{
					var _falvour_text = scr_card_flavor_text(generated_cards[gacha_result_card_focus]);
				
					scr_text_setup(global.font_large, fa_left, fa_top, c_white);
					draw_text(10, NATIVE_GUI_RESOLUTION_HEIGHT - ui_tab_height + 6, _falvour_text);
				}
			
			#endregion
			
			break;
			
		case 3:
			
			#region Quest Menu
				
			if (quest_menu_lerp_progress > 0.7)
			{
				scr_text_setup(global.font_large, fa_left, fa_top, c_white);
				draw_text(booster_menu_start_x + 11, booster_menu_start_y + 5, "Please select the milestone you wish to check...");
				
				scr_text_setup(global.font_large, fa_center, fa_top, c_white);
				for (var _i = 0; _i < 5; _i++)
				{
					if (_i != quest_option_focus)
					{
						draw_sprite_stretched(spr_ui_menu_button_background, 0, quest_option_start_x, quest_option_start_y + (_i * quest_option_gap), quest_option_width, quest_option_height);
					}
					else
					{
						draw_sprite_stretched(spr_ui_menu_button_background, 1, quest_option_start_x, quest_option_start_y + (_i * quest_option_gap), quest_option_width, quest_option_height);
					}
					draw_text(quest_option_start_x + (quest_option_width * 0.5), quest_option_start_y + (_i * quest_option_gap) + 5, quest_name[_i]);
				}
			
				draw_sprite_stretched(spr_ui_menu_option_background, 1, quest_detail_start_x, quest_detail_start_y, quest_detail_current_width, quest_detail_current_height);
				
				if (quest_detail_lerp_progress > 0.7 && (quest_option_focus > -1))
				{
					scr_text_setup(global.font_large, fa_left, fa_top, c_white);
					draw_text(quest_detail_start_x + 8, quest_detail_start_y + 5, "Milestone Details:")
					draw_text_ext(quest_detail_start_x + 8, quest_detail_start_y + 25, quest_detail[quest_option_focus], 16, quest_detail_width - 16);
					
					draw_text(quest_detail_start_x + 8, quest_detail_start_y + 85, "Require:")
					draw_sprite(quest_sprite[quest_option_focus][0], quest_sprite[quest_option_focus][1], quest_detail_start_x + 8 + (CARD_WIDTH * 0.5), quest_detail_start_y + 105 +CARD_HEIGHT);
					scr_text_setup(global.font_large, fa_left, fa_middle, c_white);
					draw_text(quest_detail_start_x + 16 + (CARD_WIDTH), quest_detail_start_y + 105 + (CARD_HEIGHT * 0.5), "x 5");
					
					scr_text_setup(global.font_large, fa_left, fa_top, c_white);
					draw_text(quest_detail_start_x + 8, quest_detail_start_y + 177, "You have: " + string(_inventory_manager.item_inventory[quest_id[quest_option_focus] + quest_sprite[quest_option_focus][1]][1]));
					
					scr_text_setup(global.font_large, fa_center, fa_top, c_white)
					draw_sprite_stretched(spr_ui_menu_button_background, quest_submit_focus, quest_detail_start_x + 8, quest_detail_start_y + 196, 60, 24);
					draw_text(quest_detail_start_x + 38, quest_detail_start_y + 201, "Submit");
					
					if (quest_status[quest_option_focus])
					{
						scr_text_setup(global.font_large, fa_left, fa_top, c_white)
						draw_text(quest_detail_start_x + 74, quest_detail_start_y + 201, "Completed!");
					}
				}
			}
			
			#endregion
			
			break;
			
		case 4:
			
			#region Options
			
			scr_text_setup(global.font_large, fa_center, fa_middle, c_white);
			draw_text(NATIVE_GUI_RESOLUTION_WIDTH * 0.5, NATIVE_GUI_RESOLUTION_HEIGHT * 0.5, "Not available right now.");
			
			#endregion
			
			break;
			
	}
	if (menu_0_focus == 0)
	{
		
	}
}

draw_set_alpha(1.0);

/*
if (global.game_paused)
{
	draw_set_color(c_black);
	draw_set_alpha(0.75);
	draw_rectangle(0, 0, NATIVE_GUI_RESOLUTION_WIDTH, NATIVE_GUI_RESOLUTION_HEIGHT, false);
	
	draw_set_alpha(1.0);
	draw_sprite_stretched(spr_ui_option_background, 1, 5, 5, ui_tab_name_bg_width, ui_tab_height); // UI Tab Name BG
	draw_sprite_stretched(spr_ui_option_background, 1, NATIVE_GUI_RESOLUTION_WIDTH - 72, 5, 67, ui_tab_height); // Back Button
	draw_sprite_stretched(spr_ui_option_background, 1, -10, NATIVE_GUI_RESOLUTION_HEIGHT - ui_tab_height, NATIVE_GUI_RESOLUTION_WIDTH + 20, ui_tab_height + 2); // Bottom Bar
	
	scr_text_setup(global.font_large, fa_center, fa_top, c_white);
	draw_text(NATIVE_GUI_RESOLUTION_WIDTH - 38, 10, "Back");
	
	switch (global.game_paused_tab)
	{
		case 0:
			draw_set_alpha(1.0);
			scr_text_setup(global.font_large, fa_center, fa_top, c_white);
			draw_text(5 + (ui_tab_name_bg_width / 2), 10, "Paused");
			scr_text_setup(global.font_large, fa_center, fa_middle, c_white);
			
		
			for (var _i = 0; _i < array_length(pause_option); _i++)
			{
				var _print = "";
				if (_i == pause_option_selected)
				{
					_print += "> " + pause_option[_i] + " <";
				}
				else
				{
					_print += pause_option[_i];
					draw_set_alpha(0.8);
				}
				draw_text(NATIVE_GUI_RESOLUTION_WIDTH * 0.5, NATIVE_GUI_RESOLUTION_HEIGHT * 0.3 + 36 + (_i * 24), _print);
				draw_set_alpha(1.0);
			}
			break;
		
		case 1:
			scr_text_setup(global.font_large, fa_center, fa_top, c_white);
			draw_text(5 + (ui_tab_name_bg_width / 2), 10, "Deck");
			
			for (var _i = 0; _i < 15; _i++)
			{
				if (_i == card_selected)
				{
					draw_sprite(spr_card_proto_select_border, floor(time_since_creation / 60) % 2, (NATIVE_GUI_RESOLUTION_WIDTH * 0.14) + ((_i % 5) * 0.18 * NATIVE_GUI_RESOLUTION_WIDTH), (NATIVE_GUI_RESOLUTION_HEIGHT * 0.2) + CARD_HEIGHT + (floor(_i / 5) * 1.3 * CARD_HEIGHT));
				}
				
				if (_deck_manager.daily_deck[_i + 1][0] > 0)
				{
					var _sprite = asset_get_index("spr_card_" + string(_deck_manager.daily_deck[_i + 1][0]));
					if (_deck_manager.daily_deck[_i + 1][1] == 0)
					{
						var _index = 0;
					}
					else
					{
						var _index = 1;
					}
				}
				else
				{
					var _sprite = asset_get_index("spr_card_proto_empty");
					var _index = 0;
				}
				
				draw_sprite(_sprite, _index, (NATIVE_GUI_RESOLUTION_WIDTH * 0.14) + ((_i % 5) * 0.18 * NATIVE_GUI_RESOLUTION_WIDTH), (NATIVE_GUI_RESOLUTION_HEIGHT * 0.2) + CARD_HEIGHT + (floor(_i / 5) * 1.3 * CARD_HEIGHT));
			}
			
			break;
			
		case 2:
			scr_text_setup(global.font_large, fa_center, fa_top, c_white);
			draw_text(5 + (ui_tab_name_bg_width / 2), 10, "Cardbook");
			
			draw_sprite(spr_ui_tab, card_book_tab - 1, 15, 48);
			draw_text(73, 53, "Active");
			
			if (card_book_tab == 1)
			{
				for (var _i = 0; _i < 15; _i++)
				{
					if (_inventory_manager.card_inventory[_i + 1 + ((card_book_start_row - 1) * 5)][0] != false)
					{
						var _sprite = asset_get_index("spr_card_" + string(_i + 1 + ((card_book_start_row - 1) * 5)));
					}
					else
					{
						var _sprite = asset_get_index("spr_card_mystery");
					}
					
					draw_sprite(_sprite, 0, 28 + (CARD_WIDTH * 0.5) + ((_i % 5) * (CARD_WIDTH + 16)), 86 + CARD_HEIGHT + (floor(_i / 5) * (CARD_HEIGHT + 16)));
					
					if (_i + 1 + ((card_book_start_row - 1) * 5) == card_book_selected)
					{
						draw_sprite(spr_card_proto_select_border, (global.session_time / 60) % 2, 28 + (CARD_WIDTH * 0.5) + ((_i % 5) * (CARD_WIDTH + 16)), 86 + CARD_HEIGHT + (floor(_i / 5) * (CARD_HEIGHT + 16)));
					}
				}
				
				if (_inventory_manager.card_inventory[card_book_selected][0] == true)
				{
					var _falvour_text = scr_card_flavor_text(card_book_selected);
				}
				else
				{
					var _falvour_text = "???";
				}
				
				scr_text_setup(global.font_large, fa_left, fa_top, c_white);
				draw_text(10, NATIVE_GUI_RESOLUTION_HEIGHT - ui_tab_height + 6, _falvour_text);
				
				draw_sprite(spr_gui_arrow_up, 0, 608, 82);
				draw_sprite(spr_gui_arrow_down, 0, 608, 308);
				
				for (var _i = 1; _i <= 18; _i++)
				{
					if (card_book_start_row == _i)
					{
						draw_sprite(spr_ui_scroll_bar, 0, 605, 98 + (11 * (_i - 1)));
					}
					else
					{
						draw_sprite(spr_ui_scroll_bar, 1, 605, 98 + (11 * (_i - 1)));
					}
				}
				
				
			}
			
			break;
		
		default:
			break;
	}
}

*/
#endregion



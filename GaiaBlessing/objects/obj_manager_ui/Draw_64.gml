/// @description Draw Game UI

var _input_manager = global.instance_manager_input;
var _card_manager = global.instance_manager_card;
var _deck_manager = global.instance_manager_deck;
var _inventory_manager = global.instance_manager_inventory;

display_set_gui_size(NATIVE_GUI_RESOLUTION_WIDTH, NATIVE_GUI_RESOLUTION_HEIGHT);

if (room == r_ending)
{
	scr_text_setup(fnt_gui_dialogue_text, fa_center, fa_middle, c_white);
	draw_text(NATIVE_GUI_RESOLUTION_WIDTH * 0.5, NATIVE_GUI_RESOLUTION_HEIGHT * 0.5, "You completed the game, press R to restart.");
	
}
else
{

#region Energy HUD Display
/*
var _player_energy_current = global.player_energy_current;
var _player_energy_max = global.player_energy_max;
var _player_energy_fraction = frac(_player_energy_current);
_player_energy_current -= _player_energy_fraction;

for (var _i = 1; _i <= _player_energy_max; _i++)
{
	var _image_index = (_i > _player_energy_current);
	if (_i == _player_energy_current + 1)
	{
		_image_index += (_player_energy_fraction > 0);
		_image_index += (_player_energy_fraction > 0.25);
		_image_index += (_player_energy_fraction > 0.5);
	}
	
	draw_sprite(spr_gui_energy, _image_index, 8 + ((_i - 1) * 20), NATIVE_GUI_RESOLUTION_HEIGHT - 40);
}
*/
#endregion

scr_text_setup(fnt_gui_dialogue_text, fa_left, fa_top, c_white);
draw_text(10, 10, "Day " + string(global.game_day));

scr_text_setup(fnt_gui_dialogue_text, fa_left, fa_top, c_white);
draw_sprite(spr_gui_value, 0, 10, 40);
draw_text(38, 36, global.player_coin);

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

if (show_cards)
{	
	
	#region Card UI Old, Keyboard control.
	/*
	if (_input_manager.input_any_card)
	{
		for (var _i = 0; _i < 5; _i++)
		{
			if (_input_manager.key_card[_i] != 0) && (_i == focused_card) // If the focused card is used again
			{
				focused_card = -1;
				card_from_key = false;
				_card_manager.activated_card_slot = _i;
				_card_manager.activated_card_id = _deck_manager.deck_active[_i];
				_card_manager.alarm[0] = 2;
			}
			else if (_input_manager.key_card[_i] != 0) // If the player select another card instead
			{
				focused_card = _i;
				card_from_key = true;
			}
		}
	}
	else if (_input_manager.key_back) // Press Esc
	{
		focused_card = -1;
		card_from_key = false;
	}
	else
	{
		if (card_from_key == false)
		{
			focused_card = -1;
		}
	}
	*/
	
	#endregion
	
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
				_card_manager.activated_card_slot = focused_card;
				_card_manager.activated_card_id = _deck_manager.deck_active[focused_card];
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
		
			card_information = scr_card_info(_deck_manager.deck_active[focused_card]);
			if (card_information[0] != 0)
			{
				var _index_to_display = scr_tooltip_info(card_information[0])[0];
				var _tooltip_text = scr_tooltip_info(card_information[0])[1];
			
				scr_text_setup(fnt_dialogue_text, fa_left, fa_top, #353738);
				var _tooltip_width = string_width(_tooltip_text);

				draw_sprite_stretched(spr_dialogue_background, 0, _focused_card_origin_x + (0.48 * CARD_WIDTH) + 4, _focused_card_origin_y - CARD_HEIGHT, 140, 50);
				draw_sprite(spr_gui_player_buff, _index_to_display, _focused_card_origin_x + (0.48 * CARD_WIDTH) + 8, _focused_card_origin_y - CARD_HEIGHT + 4);
				draw_text_ext(_focused_card_origin_x + (0.48 * CARD_WIDTH) + 8, _focused_card_origin_y - CARD_HEIGHT + 15, _tooltip_text, 10, 130);
			}
		}
		
	}

}

#endregion

#region Pause Menu

if (global.game_paused)
{
	draw_set_color(#353738);
	draw_set_alpha(0.75);
	draw_rectangle(0, 0, NATIVE_GUI_RESOLUTION_WIDTH, NATIVE_GUI_RESOLUTION_HEIGHT, false);
	
	switch (global.game_paused_tab)
	{
		case 0:
			draw_set_alpha(1.0);
			scr_text_setup(fnt_gui_dialogue_text, fa_center, fa_middle, c_white);
			draw_text(NATIVE_GUI_RESOLUTION_WIDTH * 0.5, NATIVE_GUI_RESOLUTION_HEIGHT * 0.5, "...Game Paused...");
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
					draw_set_alpha(0.7);
				}
				draw_text(NATIVE_GUI_RESOLUTION_WIDTH * 0.5, NATIVE_GUI_RESOLUTION_HEIGHT * 0.5 + 36 + (_i * 24), _print);
				draw_set_alpha(1.0);
			}
			break;
		
		case 1:
			draw_set_alpha(1.0);
			scr_text_setup(fnt_gui_dialogue_text, fa_center, fa_middle, c_white);
			draw_text(NATIVE_GUI_RESOLUTION_WIDTH * 0.5, NATIVE_GUI_RESOLUTION_HEIGHT * 0.1, "...Cards in deck...");
			
			// draw_sprite(spr_deck_side_bar, card_display_row_start, (NATIVE_GUI_RESOLUTION_WIDTH * 0.97), (NATIVE_GUI_RESOLUTION_HEIGHT * 0.5));
			
			
			for (var _i = 0; _i < 15; _i++)
			{
				if (_i  + (card_display_row_start * 5) == card_selected)
				{
					draw_sprite(spr_card_proto_select_border, floor(time_since_creation / 60) % 2, (NATIVE_GUI_RESOLUTION_WIDTH * 0.14) + ((_i % 5) * 0.18 * NATIVE_GUI_RESOLUTION_WIDTH), (NATIVE_GUI_RESOLUTION_HEIGHT * 0.2) + CARD_HEIGHT + (floor(_i / 5) * 1.2 * CARD_HEIGHT) + 8);
				}
				
				if (_inventory_manager.card_deck_to_draw[_i + (card_display_row_start * 5)] > 0)
				{
					var _sprite = asset_get_index("spr_card_" + string(_inventory_manager.card_deck_to_draw[_i + (card_display_row_start * 5)]));
				}
				else
				{
					var _sprite = asset_get_index("spr_card_proto_empty");
				}
				
				draw_sprite(_sprite, 0, (NATIVE_GUI_RESOLUTION_WIDTH * 0.14) + ((_i % 5) * 0.18 * NATIVE_GUI_RESOLUTION_WIDTH), (NATIVE_GUI_RESOLUTION_HEIGHT * 0.2) + CARD_HEIGHT + (floor(_i / 5) * 1.2 * CARD_HEIGHT));
			}
			
			break;
			
		
		default:
			break;
	}
}

#endregion

}
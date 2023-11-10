#region Banner and Layout

draw_set_color(c_black);
draw_set_alpha(0.75);
draw_rectangle(0, 0, NATIVE_GUI_RESOLUTION_WIDTH, NATIVE_GUI_RESOLUTION_HEIGHT, false);
	
draw_set_alpha(1.0);
draw_sprite_stretched(spr_ui_option_background, 1, 5, 5, ui_tab_name_bg_width, ui_tab_height); // UI Tab Name BG
draw_sprite_stretched(spr_ui_option_background, 1, NATIVE_GUI_RESOLUTION_WIDTH - 72, 5, 67, ui_tab_height); // Back Button
draw_sprite_stretched(spr_ui_option_background, 1, -10, NATIVE_GUI_RESOLUTION_HEIGHT - ui_tab_height, NATIVE_GUI_RESOLUTION_WIDTH + 20, ui_tab_height + 2); // Bottom Bar

draw_sprite_stretched(spr_ui_option_background, 1, 513, 66, 112, 256);

scr_text_setup(global.font_large, fa_center, fa_top, c_white);
draw_text(NATIVE_GUI_RESOLUTION_WIDTH - 38, 10, "Back");

draw_set_alpha(1.0);
scr_text_setup(global.font_large, fa_center, fa_top, c_white);
draw_text(5 + (ui_tab_name_bg_width / 2), 10, "Deck Manager");

scr_text_setup(global.font_large, fa_left, fa_top, c_white);
draw_text(520, 72, "Deck");

#endregion

switch (ui_tab)
{
	case 0:
		draw_sprite(spr_ui_deck_management_tab_1, 0, 15, 46);
		scr_text_setup(global.font_large, fa_center, fa_top, c_white);
		draw_text(73, 51, "Basic");
		draw_sprite(spr_ui_seed_icon, 0, 137, 52);
		
		for (var _i = 0; _i < 12; _i++)
		{
			if (inventory_manager.card_inventory[_i + 1 + ((card_start_row - 1) * 4)][0] != false)
			{
				var _sprite = asset_get_index("spr_card_" + string(_i + 1 + ((card_start_row - 1) * 4)));
			}
			else
			{
				var _sprite = asset_get_index("spr_card_mystery");
			}
	
			if (inventory_manager.card_inventory[_i + 1 + ((card_start_row - 1) * 4)][1] - inventory_manager.card_inventory[_i + 1 + ((card_start_row - 1) * 4)][2] == 0)
			{
				draw_sprite(_sprite, 1, 28 + (CARD_WIDTH * 0.5) + ((_i % 4) * (CARD_WIDTH + 16)), 86 + CARD_HEIGHT + (floor(_i / 4) * (CARD_HEIGHT + 16)));
			}
			else
			{
				draw_sprite(_sprite, 0, 28 + (CARD_WIDTH * 0.5) + ((_i % 4) * (CARD_WIDTH + 16)), 86 + CARD_HEIGHT + (floor(_i / 4) * (CARD_HEIGHT + 16)));
			}
	
			/*
			if (_i + 1 + ((card_start_row - 1) * 4) == card_selected)
			{
				draw_sprite(spr_card_proto_select_border, (global.session_time / 60) % 2, 28 + (CARD_WIDTH * 0.5) + ((_i % 4) * (CARD_WIDTH + 16)), 86 + CARD_HEIGHT + (floor(_i / 4) * (CARD_HEIGHT + 16)));
			}
			*/
	
			scr_text_setup(global.font_number_large, fa_left, fa_top, c_white);
	
			draw_text(28 + (CARD_WIDTH * 0.95) + ((_i % 4) * (CARD_WIDTH + 16)), 78 + CARD_HEIGHT + (floor(_i / 4) * (CARD_HEIGHT + 16)), string(inventory_manager.card_inventory[_i + 1 + ((card_start_row - 1) * 4)][1] - inventory_manager.card_inventory[_i + 1 + ((card_start_row - 1) * 4)][2]));
		}

		for (var _i = 1; _i <= 3; _i++)
		{
			if (card_start_row == _i)
			{
				draw_sprite(spr_ui_scroll_bar, 0, 484, 98 + (11 * (_i - 1)) + 83);
			}
			else
			{
				draw_sprite(spr_ui_scroll_bar, 1, 484, 98 + (11 * (_i - 1)) + 83);
			}
		}
		
		break;

	case 1:
		draw_sprite(spr_ui_deck_management_tab_2, 0, 15, 46);
		scr_text_setup(global.font_large, fa_center, fa_top, c_white);
		draw_text(99, 51, "Seeds");
		draw_text(31, 51, "B");
		
		for (var _i = 0; _i < 12; _i++)
		{
			if (inventory_manager.card_inventory[_i + 61 + ((card_start_row - 1) * 4)][0] != false)
			{
				var _sprite = asset_get_index("spr_card_" + string(_i + 61 + ((card_start_row - 1) * 4)));
			}
			else
			{
				var _sprite = asset_get_index("spr_card_mystery");
			}
	
			if (inventory_manager.card_inventory[_i + 61 + ((card_start_row - 1) * 4)][1] - inventory_manager.card_inventory[_i + 61 + ((card_start_row - 1) * 4)][2] == 0)
			{
				draw_sprite(_sprite, 1, 28 + (CARD_WIDTH * 0.5) + ((_i % 4) * (CARD_WIDTH + 16)), 86 + CARD_HEIGHT + (floor(_i / 4) * (CARD_HEIGHT + 16)));
			}
			else
			{
				draw_sprite(_sprite, 0, 28 + (CARD_WIDTH * 0.5) + ((_i % 4) * (CARD_WIDTH + 16)), 86 + CARD_HEIGHT + (floor(_i / 4) * (CARD_HEIGHT + 16)));
			}
	
			scr_text_setup(global.font_number_large, fa_left, fa_top, c_white);
	
			draw_text(28 + (CARD_WIDTH * 0.95) + ((_i % 4) * (CARD_WIDTH + 16)), 78 + CARD_HEIGHT + (floor(_i / 4) * (CARD_HEIGHT + 16)), string(inventory_manager.card_inventory[_i + 61 + ((card_start_row - 1) * 4)][1] - inventory_manager.card_inventory[_i + 61 + ((card_start_row - 1) * 4)][2]));
		}

		for (var _i = 1; _i <= 3; _i++)
		{
			if (card_start_row == _i)
			{
				draw_sprite(spr_ui_scroll_bar, 0, 484, 98 + (11 * (_i - 1)) + 83);
			}
			else
			{
				draw_sprite(spr_ui_scroll_bar, 1, 484, 98 + (11 * (_i - 1)) + 83);
			}
		}
		
		break;
}

draw_sprite_stretched(spr_ui_option_background, 1, 536, 291, 66, ui_tab_height); // Clear Button
scr_text_setup(global.font_large, fa_center, fa_top, c_white);
draw_text(569, 296, "Clear");

for (var _i = 0; _i < inventory_manager.card_type_in_deck_count; _i++)
{	
	scr_text_setup(global.font_capital, fa_left, fa_top, #353738);
	draw_text(521, 57 + 32 + (_i * 12), scr_card_name(inventory_manager.card_type_in_deck[_i]));
	scr_text_setup(global.font_capital, fa_right, fa_top, #353738);
	draw_text(618, 57 + 32 + (_i * 12), "x" + string(inventory_manager.card_inventory[inventory_manager.card_type_in_deck[_i]][2]));
}

if (focused_card > 0)
{
	if (inventory_manager.card_inventory[focused_card][0] == true)
	{
		var _falvour_text = scr_card_flavor_text(focused_card);
	}
	else
	{
		var _falvour_text = "???";
	}
				
	scr_text_setup(global.font_large, fa_left, fa_top, c_white);
	draw_text(10, NATIVE_GUI_RESOLUTION_HEIGHT - ui_tab_height + 6, _falvour_text);
	
	var _card_information = scr_card_info(focused_card);
			
	if (_card_information[0] != 0)
	{
		var _index_to_display = scr_tooltip_info(_card_information[0])[0];
		var _tooltip_text = scr_tooltip_info(_card_information[0])[1];
			
		scr_text_setup(global.font_large, fa_left, fa_top, c_white);
		var _tooltip_width = string_width_ext(_tooltip_text, 12, 170);
		var _tooltip_height = string_height_ext(_tooltip_text, 12, 170);

		if (inventory_card_start_x + CARD_WIDTH + focused_card_x * (CARD_WIDTH + 16) + 184 < NATIVE_GUI_RESOLUTION_WIDTH)
		{
			scr_text_setup(global.font_large, fa_left, fa_top, c_white);
			draw_set_alpha(1.0);
			draw_sprite_stretched(spr_ui_option_background, 0, inventory_card_start_x + CARD_WIDTH + focused_card_x * (CARD_WIDTH + 16) + 4, inventory_card_start_y + focused_card_y * (CARD_HEIGHT + 16), _tooltip_width + 10, _tooltip_height + 20);
			draw_sprite(spr_gui_player_buff, _index_to_display, inventory_card_start_x + CARD_WIDTH + focused_card_x * (CARD_WIDTH + 16) + 8, inventory_card_start_y + focused_card_y * (CARD_HEIGHT + 16) + 4);
			draw_text_ext(inventory_card_start_x + CARD_WIDTH + focused_card_x * (CARD_WIDTH + 16) + 8, inventory_card_start_y + focused_card_y * (CARD_HEIGHT + 16) + 17, _tooltip_text, 12, 170);
			draw_set_alpha(1.0);
		}
		else
		{
			scr_text_setup(global.font_large, fa_left, fa_top, c_white);
			draw_set_alpha(1.0);
			draw_sprite_stretched(spr_ui_option_background, 0, inventory_card_start_x + focused_card_x * (CARD_WIDTH + 16) - _tooltip_width - 14, inventory_card_start_y + focused_card_y * (CARD_HEIGHT + 16), _tooltip_width + 10, _tooltip_height + 20);
			draw_sprite(spr_gui_player_buff, _index_to_display, inventory_card_start_x + focused_card_x * (CARD_WIDTH + 16) - _tooltip_width - 10, inventory_card_start_y + focused_card_y * (CARD_HEIGHT + 16) + 4);
			draw_text_ext(inventory_card_start_x + focused_card_x * (CARD_WIDTH + 16) - _tooltip_width - 10, inventory_card_start_y + focused_card_y * (CARD_HEIGHT + 16) + 17, _tooltip_text, 12, 170);
			draw_set_alpha(1.0);
		}
	}
}
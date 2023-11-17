
	
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
if (title_alpha > 0)
{
	draw_set_alpha(name_alpha);
	draw_sprite(spr_menu_gui, 0, 0, 0);
	
	draw_set_alpha(title_alpha * abs(sin(get_timer() * 0.0000005 * pi)));
	draw_sprite(spr_menu_gui, 1, 0, 0);
	draw_set_alpha(1.0);
}

if (save_slot_visible > 0)
{
	// Save slot selection Instruction
	scr_text_setup(fnt_gui_dialogue_text, fa_center, fa_middle, #353738);
	draw_text(NATIVE_GUI_RESOLUTION_WIDTH / 2, 16, "Select your save.");
	
	// Draw Save Slot
	draw_set_alpha(save_slot_visible);
	
	for (var _slot = 0; _slot <= 2; _slot++)
	{
		// Draw the Box
		var _y = save_slot_y_start + _slot * save_slot_y_gap;
		var _x = NATIVE_GUI_RESOLUTION_WIDTH / 2;
		var _img = 0;
		if (_slot == save_slot_selected)
		{
			// Selection Icon
			draw_sprite_ext(spr_player_menu, floor(time_since_game_start / 15) % 6, _x - 17, _y + save_slot_height / 2, 1, 1, 0, c_white, 1);
		}
		draw_sprite_stretched(spr_dialogue_background, _img, _x, _y, save_slot_width, save_slot_height);
		// Draw Data (if exists)
		scr_text_setup(global.font_large, fa_left, fa_top, c_white);
		if (slot_data[_slot] == -1)
		{
			draw_text(_x + save_slot_text_x_offset, _y + save_slot_text_y_offset, "Press to start");
		}
		else
		{
			draw_text(_x + save_slot_text_x_offset, _y + save_slot_text_y_offset, "Day " +  string(slot_data[_slot][? "game_day"]));
		}
	}
	
	draw_set_alpha(1.0);
}


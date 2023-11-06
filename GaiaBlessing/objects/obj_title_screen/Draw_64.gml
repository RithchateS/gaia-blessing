draw_set_alpha(title_alpha);
draw_sprite(spr_ui_logo_placeholder, 0, NATIVE_GUI_RESOLUTION_WIDTH / 2, 24);

draw_set_alpha(title_prompt_alpha * abs(sin(time_since_game_start * 0.005 * pi)));
scr_text_setup(global.font_large, fa_center, fa_top, c_white);
draw_text(NATIVE_GUI_RESOLUTION_WIDTH * 0.5, 264, "Press Any Key");

draw_set_alpha(title_option_alpha);
for (var _i = 0; _i < 4; _i++)
{
	if (_i != 0)
	{	
		if (title_state == 1)
		{
			if (_i != focused_option)
			{
				draw_sprite_stretched(spr_ui_option_background, 0, (NATIVE_GUI_RESOLUTION_WIDTH - title_option_width) * 0.5, 208 + (_i * (title_option_height + 10)), title_option_width, title_option_height);
			}
			else
			{
				draw_sprite_stretched(spr_ui_option_background, 1, (NATIVE_GUI_RESOLUTION_WIDTH - title_option_width) * 0.5, 208 + (_i * (title_option_height + 10)), title_option_width, title_option_height);
			}
			
			scr_text_setup(global.font_large, fa_center, fa_top, c_white);
			draw_text(NATIVE_GUI_RESOLUTION_WIDTH * 0.5, 213 + (_i * (title_option_height + 10)), title_option_text[_i]);
		}
		else if (title_state == 2)
		{
			if (_i != (save_slot_selected + 1))
			{
				draw_sprite_stretched(spr_ui_option_background, 0, (NATIVE_GUI_RESOLUTION_WIDTH - title_option_width) * 0.5, 208 + (_i * (title_option_height + 10)), title_option_width, title_option_height);
			}
			else
			{
				draw_sprite_stretched(spr_ui_option_background, 1, (NATIVE_GUI_RESOLUTION_WIDTH - title_option_width) * 0.5, 208 + (_i * (title_option_height + 10)), title_option_width, title_option_height);
			}
			
			if (slot_data[_i - 1] == -1)
			{
				draw_text(NATIVE_GUI_RESOLUTION_WIDTH * 0.5, 213 + (_i * (title_option_height + 10)), "New Game");
			}
			else
			{
				draw_text(NATIVE_GUI_RESOLUTION_WIDTH * 0.5, 213 + (_i * (title_option_height + 10)), "Day " +  string(slot_data[_i - 1][? "game_day"]));
			}
		}
	}
	else
	{
		if (title_state == 1)
		{
			if (_i != focused_option)
			{
				draw_sprite_stretched(spr_ui_option_background, 0, (NATIVE_GUI_RESOLUTION_WIDTH - title_option_width) * 0.5, 208 + (_i * (title_option_height + 10)), title_option_width, title_option_height);
			}
			else
			{
				draw_sprite_stretched(spr_ui_option_background, 1, (NATIVE_GUI_RESOLUTION_WIDTH - title_option_width) * 0.5, 208 + (_i * (title_option_height + 10)), title_option_width, title_option_height);
			}
			scr_text_setup(global.font_large, fa_center, fa_top, c_white);
			draw_text(NATIVE_GUI_RESOLUTION_WIDTH * 0.5, 213 + (_i * (title_option_height + 10)), title_option_text[_i]);
		}
		else
		{
			scr_text_setup(global.font_large, fa_center, fa_top, c_white);
			draw_text(NATIVE_GUI_RESOLUTION_WIDTH * 0.5, 213, "Select save slot");
		}
	}
}
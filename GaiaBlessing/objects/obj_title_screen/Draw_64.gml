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
				draw_sprite_stretched(spr_ui_menu_button_background, 0, (NATIVE_GUI_RESOLUTION_WIDTH - title_option_width) * 0.5, 208 + (_i * (title_option_height + 10)), title_option_width, title_option_height);
			}
			else
			{
				draw_sprite_stretched(spr_ui_menu_button_background, 1, (NATIVE_GUI_RESOLUTION_WIDTH - title_option_width) * 0.5, 208 + (_i * (title_option_height + 10)), title_option_width, title_option_height);
			}
			
			scr_text_setup(global.font_large, fa_center, fa_top, c_white);
			draw_text(NATIVE_GUI_RESOLUTION_WIDTH * 0.5, 213 + (_i * (title_option_height + 10)), title_option_text[_i]);
		}
		else if (title_state == 2)
		{
			if (_i != (save_slot_selected + 1))
			{
				draw_sprite_stretched(spr_ui_menu_button_background, 0, (NATIVE_GUI_RESOLUTION_WIDTH - title_option_width) * 0.5, 208 + (_i * (title_option_height + 10)), title_option_width, title_option_height);
			}
			else
			{
				draw_sprite_stretched(spr_ui_menu_button_background, 1, (NATIVE_GUI_RESOLUTION_WIDTH - title_option_width) * 0.5, 208 + (_i * (title_option_height + 10)), title_option_width, title_option_height);
			}
			
			if (slot_data[_i - 1] == -1)
			{
				draw_text(NATIVE_GUI_RESOLUTION_WIDTH * 0.5, 213 + (_i * (title_option_height + 10)), "New Game");
			}
			else
			{
				draw_text(NATIVE_GUI_RESOLUTION_WIDTH * 0.5, 213 + (_i * (title_option_height + 10)), "Day " +  string(slot_data[_i - 1][? "game_day"]));
			}
			
			for (var _j = 0; _j < 3; _j++)
			{
				draw_sprite(spr_gui_remove, 0, (NATIVE_GUI_RESOLUTION_WIDTH + title_option_width) * 0.5 + 10, 248 + (_j * (title_option_height + 10)));
			}
		}
	}
	else
	{
		if (title_state == 1)
		{
			if (_i != focused_option)
			{
				draw_sprite_stretched(spr_ui_menu_button_background, 0, (NATIVE_GUI_RESOLUTION_WIDTH - title_option_width) * 0.5, 208 + (_i * (title_option_height + 10)), title_option_width, title_option_height);
			}
			else
			{
				draw_sprite_stretched(spr_ui_menu_button_background, 1, (NATIVE_GUI_RESOLUTION_WIDTH - title_option_width) * 0.5, 208 + (_i * (title_option_height + 10)), title_option_width, title_option_height);
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

if (show_credit)
{
	draw_set_color(c_black);
	draw_set_alpha(0.9);
	draw_rectangle(0, 0, NATIVE_GUI_RESOLUTION_WIDTH, NATIVE_GUI_RESOLUTION_HEIGHT, false);
	scr_text_setup(global.font_large, fa_center, fa_top, c_white);
	draw_text(NATIVE_GUI_RESOLUTION_WIDTH * 0.5, 25, "CREDITS");
	
	draw_text(NATIVE_GUI_RESOLUTION_WIDTH * 0.5, 55, "IKU Productions Team");
	
	scr_text_setup(global.font_small, fa_center, fa_top, c_white);
	draw_text(NATIVE_GUI_RESOLUTION_WIDTH * 0.5, 85, "Rithchate Sirimangklanurak - Programmer, Artist, Game Designer, BGM, Project Manager");
	draw_text(NATIVE_GUI_RESOLUTION_WIDTH * 0.5, 110, "Kulasatee Prampetch - Artist");
	draw_text(NATIVE_GUI_RESOLUTION_WIDTH * 0.5, 135, "Tosapol Deengamsamoe - Sound Designer, QA Tester, Card Design");
	
	scr_text_setup(global.font_large, fa_center, fa_top, c_white);
	draw_text(NATIVE_GUI_RESOLUTION_WIDTH * 0.5, 170, "Others");
	
	scr_text_setup(global.font_small, fa_center, fa_top, c_white);
	draw_text(NATIVE_GUI_RESOLUTION_WIDTH * 0.5, 200, "zapsplat.com - Sound Effects");
	draw_text(NATIVE_GUI_RESOLUTION_WIDTH * 0.5, 225, "Chisato Kimura - Sound Effects");
	draw_text(NATIVE_GUI_RESOLUTION_WIDTH * 0.5, 250, "Cupnooble - Color Palette");
	draw_text(NATIVE_GUI_RESOLUTION_WIDTH * 0.5, 275, "Kachain Puttiwarawut - Advisor");
	draw_text(NATIVE_GUI_RESOLUTION_WIDTH * 0.5, 300, "Pongtham Nantapan - Advisor");
}
/// @description Draw Text Box
draw_sprite_stretched(spr_ui_option_background, 0, x1, y1, x2 - x1, y2 - y1);
scr_text_setup(global.font_large, fa_center, fa_top, c_white);

if (x1 < x1_destination + 10)
{
	draw_text(NATIVE_GUI_RESOLUTION_WIDTH / 2, NATIVE_GUI_RESOLUTION_HEIGHT / 4 + 15, text_to_display[0]);
	for (var _i = 1; _i < 5; _i++)
	{
		if (_i == selected_option)
		{
			var _option = "> " + text_to_display[_i] + " <";
			draw_set_alpha(1.0);
			draw_text(NATIVE_GUI_RESOLUTION_WIDTH / 2, NATIVE_GUI_RESOLUTION_HEIGHT / 4 + 15 + (_i * 25), _option);
		}
		else
		{
			var _option = text_to_display[_i];
			draw_set_alpha(0.5);
			draw_text(NATIVE_GUI_RESOLUTION_WIDTH / 2, NATIVE_GUI_RESOLUTION_HEIGHT / 4 + 15 + (_i * 25), _option);
			draw_set_alpha(1.0);
		}
	}
}
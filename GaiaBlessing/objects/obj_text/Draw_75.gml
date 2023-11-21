/// @description Draw Text Box

draw_set_alpha(0.50);
draw_set_color(c_black);
draw_rectangle(0, 0, NATIVE_GUI_RESOLUTION_WIDTH, NATIVE_GUI_RESOLUTION_HEIGHT, false);

draw_set_alpha(1.00);
draw_set_color(c_white);
draw_sprite_stretched(spr_ui_menu_button_background, 0, x1, y1, x2 - x1, y2 - y1);
scr_text_setup(global.font_large, fa_center, fa_top, c_white);


if ((response_count > 0) && (lerp_progress > 0.5))
{
	
}


if (lerp_progress > 0.26 && !closing)
{
	draw_text((x1 + x2) / 2, y1 + 8, text_to_display);
	
	if (response_count > 0)
	{
		
		for (var _i = 0; _i < response_count; _i++)
		{
			if (response_select == _i)
			{
				draw_sprite_stretched(spr_ui_menu_option_background, 1, x1 + (_i + 1) * ((x2 - x1) / 3) - 24, y1 + 36, 48, 24);
			}
			else
			{
				draw_sprite_stretched(spr_ui_menu_option_background, 0, x1 + (_i + 1) * ((x2 - x1) / 3) - 24, y1 + 36, 48, 24);
			}
			
			var _option = ChatterboxGetOption(chatterbox, _i);
		
			draw_text(x1 + (_i + 1) * ((x2 - x1) / 3), y1 + 41, _option);
		}
	}
}
else if (closing && lerp_progress > 0.8)
{
	draw_text((x1 + x2) / 2, y1 + 8, text_to_display);
}

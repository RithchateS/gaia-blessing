/// @description Draw Text Box
draw_sprite_stretched(spr_dialogue_background, background, x1, y1, x2 - x1, y2 - y1);
scr_text_setup(global.font_large, fa_center, fa_top, c_white);

var _print = string_copy(text_to_display, 1, text_progress);

if ((response_count > 0) && text_finished)
{
	for (var _i = 0; _i < response_count; _i++)
	{
		_print += "\n";
		if (_i == response_select)
		{
			_print += "> ";
		}
		_print += ChatterboxGetOption(chatterbox, _i);
		if (_i == response_select)
		{
			_print += " <";
		}
	}
}

draw_text((x1 + x2) / 2, y1 + textbox_offset, _print);

/*
draw_set_color(#353738);
draw_text((x1 + x2) / 2, y1 + textbox_offset + 1, _print);
*/
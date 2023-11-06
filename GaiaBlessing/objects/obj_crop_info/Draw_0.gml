/// @description Draw Stat Box

draw_sprite_stretched(spr_crop_stat_box, background, x1, y1, x2 - x1, y2 - y1);

scr_text_setup(fnt_dialogue_text, fa_left, fa_top, #353738);

if (box_finished)
{
	draw_text(x1 + 6, y1 + 2, crop_name);

	var _name_length = string_width(crop_name);

	for (var _i = 0; _i <= crop_rank; _i++)
	{
		draw_sprite(spr_crop_rank, 2, x1 + 9 + _name_length + (_i * 12), y1 + 5);
	}

	for (var _i = 0; _i <= 2; _i++)
	{
		draw_sprite(spr_crop_stat, _i, x1 + 6, y1 + 17 + (_i * 14));
	}

	draw_sprite(spr_crop_stat_bar, 0, x1 + 20, y1 + 31);
	draw_sprite(spr_crop_stat_bar, 0, x1 + 20, y1 + 45);

	draw_sprite_stretched(spr_crop_stat_bar_fill, 0, x1 + 22, y1 + 33, (crop_growth / crop_max_growth) * 53, 7);
	draw_sprite_stretched(spr_crop_stat_bar_fill, 1, x1 + 22, y1 + 47, ((crop_nutrient % crop_max_nutrient) / crop_max_nutrient) * 53, 7);

	scr_text_setup(global.font_number, fa_left, fa_top, c_white);

	draw_text(x1 + 20, y1 + 19, string(crop_endurance) + "/" + string(crop_max_endurance));
	draw_text(x1 + 80, y1 + 33, string(crop_growth) + "/" + string(crop_max_growth));
	draw_text(x1 + 80, y1 + 47, string(crop_nutrient % crop_max_nutrient) + "/" + string(crop_max_nutrient));
}

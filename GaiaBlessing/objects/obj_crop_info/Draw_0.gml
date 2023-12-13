/// @description Draw Stat Box

draw_set_alpha(0.85);

draw_sprite_stretched(spr_ui_menu_button_background, 0, x1, y1, x2 - x1, y2 - y1);

draw_set_alpha(1.0);

scr_text_setup(global.font_small, fa_left, fa_top, c_white);

if (box_finished)
{
	if (crop_name != "Empty Plot")
	{
		draw_text(x1 + 6, y1 + 5, crop_name);

		var _name_length = string_width(crop_name);

		draw_sprite(spr_ui_crop_info_rank, crop_rank, x1 + 9 + _name_length, y1 + 6);

		for (var _i = 0; _i <= 2; _i++)
		{
			draw_sprite(spr_crop_stat, _i, x1 + 6, y1 + 17 + (_i * 14));
			draw_sprite_stretched(spr_ui_crop_empty_bar, 0, x1 + 20, y1 + 17 + (_i * 14), 57, 11);
		}

		draw_sprite_stretched(spr_ui_crop_endurance_bar, 0, x1 + 22, y1 + 19, (crop_endurance / crop_max_endurance) * 53, 7);
		
		draw_sprite_stretched(spr_ui_crop_growth_bar, 0, x1 + 22, y1 + 33, (crop_growth / crop_max_growth) * 53, 7);
		if (crop_rank < 3)
		{
			draw_sprite_stretched(spr_ui_crop_nutrients_bar, 1, x1 + 22, y1 + 47, ((crop_nutrient % crop_max_nutrient) / crop_max_nutrient) * 53, 7);
		}
		else
		{
			draw_sprite_stretched(spr_ui_crop_nutrients_bar, 1, x1 + 22, y1 + 47, 53, 7);
		}
		scr_text_setup(global.font_small, fa_left, fa_top, c_white);

		draw_text(x1 + 80, y1 + 17, string(crop_endurance) + "/" + string(crop_max_endurance));
		draw_text(x1 + 80, y1 + 31, string(crop_growth) + "/" + string(crop_max_growth));
		if (crop_rank < 3)
		{
			draw_text(x1 + 80, y1 + 45, string(crop_nutrient % crop_max_nutrient) + "/" + string(crop_max_nutrient));
		}
		else
		{
			draw_text(x1 + 80, y1 + 45, "Maxed");
		}
		
		if (crop_mod != -1)
		{
			var _image_index = scr_find_buff_index(crop_mod);
			draw_sprite(spr_gui_player_buff, _image_index, x2 - 16, y1 + 3);
		}
		
	}
	else
	{
		draw_text(x1 + 6, y1 + 5, crop_name);
		
		draw_text_ext(x1 + 6, y1 + 22, "Use a seed card to start growing crops.", 10, 106);
	}
}

draw_set_alpha(1.0);
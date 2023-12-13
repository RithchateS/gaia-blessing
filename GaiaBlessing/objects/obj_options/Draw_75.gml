/// @description Draw Text Box

draw_set_alpha(0.50);
draw_set_color(c_black);
draw_rectangle(0, 0, NATIVE_GUI_RESOLUTION_WIDTH, NATIVE_GUI_RESOLUTION_HEIGHT, false);

draw_set_alpha(1.00);
draw_set_color(c_white);
draw_sprite_stretched(spr_ui_menu_button_background, 1, x1, y1, x2 - x1, y2 - y1);

scr_text_setup(global.font_large, fa_center, fa_top, c_white);

if (options_lerp_progress > 0.26 && !closing)
{
	draw_text(NATIVE_GUI_RESOLUTION_WIDTH * 0.5, y1 + 16, "Options");
	draw_text(NATIVE_GUI_RESOLUTION_WIDTH * 0.5, y1 + 70, "Music Volume");
	draw_sprite_stretched(spr_ui_options_empty, 0, NATIVE_GUI_RESOLUTION_WIDTH * 0.5 - 77, y1 + 100, 154, 12);
	draw_text(NATIVE_GUI_RESOLUTION_WIDTH * 0.5, y1 + 160, "Effects Volume");
	draw_sprite_stretched(spr_ui_options_empty, 0, NATIVE_GUI_RESOLUTION_WIDTH * 0.5 - 77, y1 + 190, 154, 12);
	
	draw_sprite_stretched(spr_ui_options_full, 0, NATIVE_GUI_RESOLUTION_WIDTH * 0.5 - 77, y1 + 100, global.game_music_volume * 154, 12);
	draw_sprite_stretched(spr_ui_options_full, 0, NATIVE_GUI_RESOLUTION_WIDTH * 0.5 - 77, y1 + 190, global.game_effects_volume * 154, 12);
	
	draw_sprite(spr_ui_options_slider, 0, NATIVE_GUI_RESOLUTION_WIDTH * 0.5 - 77 + floor(global.game_music_volume * 154), y1 + 106);
	draw_sprite(spr_ui_options_slider, 0, NATIVE_GUI_RESOLUTION_WIDTH * 0.5 - 77 + floor(global.game_effects_volume * 154), y1 + 196);
	
	scr_text_setup(global.font_small, fa_center, fa_top, c_white);
	draw_text(NATIVE_GUI_RESOLUTION_WIDTH * 0.5, y1 + 118, floor(global.game_music_volume * 100));
	draw_text(NATIVE_GUI_RESOLUTION_WIDTH * 0.5, y1 + 208, floor(global.game_effects_volume * 100));
}


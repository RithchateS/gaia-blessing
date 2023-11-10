#region Banner and Layout

draw_set_color(c_black);
draw_set_alpha(0.75);
draw_rectangle(0, 0, NATIVE_GUI_RESOLUTION_WIDTH, NATIVE_GUI_RESOLUTION_HEIGHT, false);
	
draw_set_alpha(1.0);
draw_sprite_stretched(spr_ui_option_background, 1, 5, 5, ui_tab_name_bg_width, ui_tab_height); // UI Tab Name BG
draw_sprite_stretched(spr_ui_option_background, 1, NATIVE_GUI_RESOLUTION_WIDTH - 72, 5, 67, ui_tab_height); // Back Button
draw_sprite_stretched(spr_ui_option_background, 1, -10, NATIVE_GUI_RESOLUTION_HEIGHT - ui_tab_height, NATIVE_GUI_RESOLUTION_WIDTH + 20, ui_tab_height + 2); // Bottom Bar

scr_text_setup(global.font_large, fa_center, fa_top, c_white);
draw_text(NATIVE_GUI_RESOLUTION_WIDTH - 38, 10, "Back");

draw_set_alpha(1.0);
scr_text_setup(global.font_large, fa_center, fa_top, c_white);
draw_text(5 + (ui_tab_name_bg_width / 2), 10, "Booster Packs");

scr_text_setup(fnt_gui_dialogue_text, fa_right, fa_top, #353738);
draw_text(NATIVE_GUI_RESOLUTION_WIDTH - screen_border - 10, screen_border, global.player_coin);
var _coin_length = string_width(string(global.player_coin));
draw_sprite(spr_gui_value, 0, NATIVE_GUI_RESOLUTION_WIDTH - screen_border - 40 - _coin_length, screen_border + 5);

#endregion

draw_sprite_stretched(spr_ui_option_background, 1, 15, 46, NATIVE_GUI_RESOLUTION_WIDTH - 30, 276);

draw_sprite(spr_booster_pack, 0, NATIVE_RESOLUTION_WIDTH * 0.25 - 58, NATIVE_GUI_RESOLUTION_HEIGHT / 2 - 78);
scr_text_setup(global.font_large, fa_center, fa_top, c_white);
draw_text(NATIVE_RESOLUTION_WIDTH * 0.25, NATIVE_GUI_RESOLUTION_HEIGHT / 2 + 5, 5);

draw_sprite(spr_booster_pack, 1, NATIVE_RESOLUTION_WIDTH * 0.5 - 58, NATIVE_GUI_RESOLUTION_HEIGHT / 2 - 78);
scr_text_setup(global.font_large, fa_center, fa_top, c_white);
draw_text(NATIVE_RESOLUTION_WIDTH * 0.5, NATIVE_GUI_RESOLUTION_HEIGHT / 2 + 5, 10);

draw_sprite(spr_booster_pack, 2, NATIVE_RESOLUTION_WIDTH * 0.75 - 58, NATIVE_GUI_RESOLUTION_HEIGHT / 2 - 78);
scr_text_setup(global.font_large, fa_center, fa_top, c_white);
draw_text(NATIVE_RESOLUTION_WIDTH * 0.75, NATIVE_GUI_RESOLUTION_HEIGHT / 2 + 5, 20);
draw_text(NATIVE_RESOLUTION_WIDTH * 0.75, NATIVE_GUI_RESOLUTION_HEIGHT / 2 + 20, "(Not Implemented yet)");

if (booster_generated == true)
{
	draw_set_color(c_black);
	draw_set_alpha(0.75);
	draw_rectangle(0, 0, NATIVE_GUI_RESOLUTION_WIDTH, NATIVE_GUI_RESOLUTION_HEIGHT, false);
	
	draw_set_alpha(1);
	draw_sprite_stretched(card1_sprite, 0, card1_x1, card1_y1, card1_x2 - card1_x1, card1_y2 - card1_y1);
	draw_sprite_stretched(card2_sprite, 0, card2_x1, card2_y1, card2_x2 - card2_x1, card2_y2 - card2_y1);
	draw_sprite_stretched(card3_sprite, 0, card3_x1, card3_y1, card3_x2 - card3_x1, card3_y2 - card3_y1);
	scr_text_setup(global.font_large, fa_center, fa_top, c_white);
	draw_text( NATIVE_GUI_RESOLUTION_WIDTH / 2, NATIVE_GUI_RESOLUTION_HEIGHT - 60, "Left Click to Continue");
	
}
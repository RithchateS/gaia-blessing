#region Banner and Layout
draw_set_alpha(1);
draw_sprite_stretched(spr_dialogue_background, 0, screen_border, screen_border, NATIVE_GUI_RESOLUTION_WIDTH - 2 * screen_border, NATIVE_GUI_RESOLUTION_HEIGHT - 2 * screen_border);

scr_text_setup(fnt_gui_dialogue_text, fa_left, fa_top, #353738);
draw_text(screen_border + 10, screen_border, "Buy card boosters");

scr_text_setup(fnt_gui_dialogue_text, fa_right, fa_top, #353738);
draw_text(NATIVE_GUI_RESOLUTION_WIDTH - screen_border - 10, screen_border, global.player_coin);
var _coin_length = string_width(string(global.player_coin));
draw_sprite(spr_gui_value, 0, NATIVE_GUI_RESOLUTION_WIDTH - screen_border - 40 - _coin_length, screen_border + 5);

#endregion

draw_sprite(spr_booster_pack_1, 0, NATIVE_RESOLUTION_WIDTH * 0.5 - 58, screen_border + 40);
scr_text_setup(fnt_dialogue_text, fa_center, fa_middle, #353738);
draw_text(NATIVE_RESOLUTION_WIDTH * 0.5, screen_border + 146, 5);

if (booster_generated == true)
{
	draw_set_color(c_black);
	draw_set_alpha(0.75);
	draw_rectangle(0, 0, NATIVE_GUI_RESOLUTION_WIDTH, NATIVE_GUI_RESOLUTION_HEIGHT, false);
	
	
	
	if (booster_animation_ended)
	{
		draw_set_alpha(0.5);
		draw_sprite(spr_booster_pack_1, booster_frame, NATIVE_GUI_RESOLUTION_WIDTH / 2 - 58, NATIVE_RESOLUTION_HEIGHT / 2);
		draw_set_alpha(1);
		draw_sprite_stretched(card1_sprite, 0, card1_x1, card1_y1, card1_x2 - card1_x1, card1_y2 - card1_y1);
		draw_sprite_stretched(card2_sprite, 0, card2_x1, card2_y1, card2_x2 - card2_x1, card2_y2 - card2_y1);
		draw_sprite_stretched(card3_sprite, 0, card3_x1, card3_y1, card3_x2 - card3_x1, card3_y2 - card3_y1);
		scr_text_setup(fnt_gui_dialogue_text, fa_center, fa_top, c_white);
		draw_text( NATIVE_GUI_RESOLUTION_WIDTH / 2, screen_border - 60, "Left Click to Continue");
	}
	else
	{
		draw_set_alpha(1);
		draw_sprite(spr_booster_pack_1, booster_frame, NATIVE_GUI_RESOLUTION_WIDTH / 2 - 58, NATIVE_RESOLUTION_HEIGHT / 2);
	}
	
}
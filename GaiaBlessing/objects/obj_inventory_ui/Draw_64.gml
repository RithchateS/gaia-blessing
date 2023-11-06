#region Banner and Layout

draw_sprite_stretched(spr_dialogue_background, 0, screen_border, screen_border, NATIVE_GUI_RESOLUTION_WIDTH - 2 * screen_border, NATIVE_GUI_RESOLUTION_HEIGHT - 2 * screen_border);
draw_sprite_stretched(spr_gui_vertical_bar, 0, deck_divide_line, screen_border + 8, 4, NATIVE_GUI_RESOLUTION_HEIGHT - 2 * screen_border - 16);

scr_text_setup(fnt_gui_dialogue_text, fa_left, fa_top, #353738);
draw_text(screen_border + 10, screen_border, "Cards in Inventory");

scr_text_setup(fnt_gui_dialogue_text, fa_right, fa_top, #353738);
draw_text( NATIVE_GUI_RESOLUTION_WIDTH - screen_border - 10, screen_border, " Deck");

#endregion

draw_sprite(spr_gui_arrow_up, 0, NATIVE_RESOLUTION_WIDTH * 0.4 - 2, screen_border + 40);
draw_sprite(spr_gui_arrow_down, 0, NATIVE_RESOLUTION_WIDTH * 0.4 - 2, NATIVE_GUI_RESOLUTION_HEIGHT - screen_border - 12);

for (var _i = 0; _i < inventory_manager.card_found_count; _i++)
{
	var _sprite = asset_get_index("spr_card_" + string(inventory_manager.card_found[_i + (card_display_row_start * 4)]));
	
	if (inventory_manager.card_inventory[inventory_manager.card_found[_i + (card_display_row_start * 4)]][1] - inventory_manager.card_inventory[inventory_manager.card_found[_i + (card_display_row_start * 4)]][2] == 0)
	{
		draw_sprite(_sprite, 1, inventory_card_start_x + (CARD_WIDTH * 0.5) + (_i % 4) * (CARD_WIDTH + 8), inventory_card_start_y + CARD_HEIGHT + floor(_i / 4) * (CARD_HEIGHT + 16));
		scr_text_setup(fnt_dialogue_text, fa_center, fa_top, #353738);
		draw_text(inventory_card_start_x + (CARD_WIDTH * 0.5) + (_i % 4) * (CARD_WIDTH + 8), inventory_card_start_y + CARD_HEIGHT + floor(_i / 4) * (CARD_HEIGHT + 16), "x" + string(inventory_manager.card_inventory[inventory_manager.card_found[_i + (card_display_row_start * 4)]][1] - inventory_manager.card_inventory[inventory_manager.card_found[_i + (card_display_row_start * 4)]][2]))
	}
	else
	{
		draw_sprite(_sprite, 0, inventory_card_start_x + (CARD_WIDTH * 0.5) + (_i % 4) * (CARD_WIDTH + 8), inventory_card_start_y + CARD_HEIGHT + floor(_i / 4) * (CARD_HEIGHT + 16));
		scr_text_setup(fnt_dialogue_text, fa_center, fa_top, #353738);
		draw_text(inventory_card_start_x + (CARD_WIDTH * 0.5) + (_i % 4) * (CARD_WIDTH + 8), inventory_card_start_y + CARD_HEIGHT + floor(_i / 4) * (CARD_HEIGHT + 16), "x" + string(inventory_manager.card_inventory[inventory_manager.card_found[_i + (card_display_row_start * 4)]][1] - inventory_manager.card_inventory[inventory_manager.card_found[_i + (card_display_row_start * 4)]][2]))
	}
}

for (var _i = 0; _i < inventory_manager.card_deck_count; _i++)
{
	draw_sprite_stretched(spr_gui_card_short, 0, deck_sprite_start_x, screen_border + 32 + (_i * 19), deck_sprite_width, 15);
	scr_text_setup(fnt_dialogue_text, fa_left, fa_top, #353738);
	draw_text(deck_text_start_x, screen_border + 32 + (_i * 19), scr_card_name(inventory_manager.card_deck[_i]));
	scr_text_setup(fnt_dialogue_text, fa_right, fa_top, #353738);
	draw_text(deck_number_start_x, screen_border + 32 + (_i * 19), "x" + string(inventory_manager.card_inventory[inventory_manager.card_deck[_i]][2]));
	scr_text_setup(global.font_number, fa_center, fa_top, #353738);
	draw_text(deck_text_start_x - 14, screen_border + 36 + (_i * 19), inventory_manager.card_deck[_i]);
	draw_sprite(spr_gui_remove, 0, deck_sprite_start_x + 85, screen_border + 33 + (_i * 19));
}

if (focused_card != 1) && (scr_card_info(focused_card)[0] != 0)
{
	draw_sprite_stretched(spr_dialogue_background, 0, inventory_card_start_x + CARD_WIDTH + focused_card_x * (CARD_WIDTH + 8) + 4, inventory_card_start_y + focused_card_y * (CARD_HEIGHT + 16), 140, 50);
	draw_sprite(spr_gui_player_buff, scr_tooltip_info(scr_card_info(focused_card)[0])[0], inventory_card_start_x + CARD_WIDTH + focused_card_x * (CARD_WIDTH + 8) + 9, inventory_card_start_y + focused_card_y * (CARD_HEIGHT + 16) + 5);
	scr_text_setup(fnt_dialogue_text, fa_left, fa_top, #353738);
	draw_text_ext(inventory_card_start_x + CARD_WIDTH + focused_card_x * (CARD_WIDTH + 8) + 9, inventory_card_start_y + focused_card_y * (CARD_HEIGHT + 16) + 17, scr_tooltip_info(scr_card_info(focused_card)[0])[1], 12, 130)
}
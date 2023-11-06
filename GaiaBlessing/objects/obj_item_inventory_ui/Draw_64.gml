#region Banner and Layout

draw_sprite_stretched(spr_dialogue_background, 0, screen_border, screen_border, NATIVE_GUI_RESOLUTION_WIDTH - 2 * screen_border, NATIVE_GUI_RESOLUTION_HEIGHT - 2 * screen_border);


scr_text_setup(fnt_gui_dialogue_text, fa_left, fa_top, #353738);
draw_text(screen_border + 10, screen_border, "Item Cards in Inventory");

scr_text_setup(fnt_gui_dialogue_text, fa_right, fa_top, #353738);
draw_text(NATIVE_GUI_RESOLUTION_WIDTH - screen_border - 10, screen_border, global.player_coin);
var _coin_length = string_width(string(global.player_coin));
draw_sprite(spr_gui_value, 0, NATIVE_GUI_RESOLUTION_WIDTH - screen_border - 40 - _coin_length, screen_border + 5);

#endregion

draw_sprite(spr_gui_arrow_up, 0, NATIVE_RESOLUTION_WIDTH * 0.5, screen_border + 40);
draw_sprite(spr_gui_arrow_down, 0, NATIVE_RESOLUTION_WIDTH * 0.5, NATIVE_GUI_RESOLUTION_HEIGHT - screen_border - 12);

for (var _i = 0; _i < inventory_manager.item_found_count; _i++)
{
	var _sprite = asset_get_index("spr_card_" + string(inventory_manager.item_found[_i + (card_display_row_start * 5)]));
	
	if (inventory_manager.item_inventory[inventory_manager.item_found[_i + (card_display_row_start * 5)]][1] - inventory_manager.item_inventory[inventory_manager.item_found[_i + (card_display_row_start * 5)]][2] == 0)
	{
		draw_sprite(_sprite, 1, inventory_card_start_x + (CARD_WIDTH * 0.5) + (_i % 5) * (CARD_WIDTH + 8), inventory_card_start_y + CARD_HEIGHT + floor(_i / 5) * (CARD_HEIGHT + 16));
		scr_text_setup(fnt_dialogue_text, fa_center, fa_top, #353738);
		draw_text(inventory_card_start_x + (CARD_WIDTH * 0.5) + (_i % 5) * (CARD_WIDTH + 8), inventory_card_start_y + CARD_HEIGHT + floor(_i / 5) * (CARD_HEIGHT + 16), "x" + string(inventory_manager.item_inventory[inventory_manager.item_found[_i + (card_display_row_start * 5)]][1] - inventory_manager.item_inventory[inventory_manager.item_found[_i + (card_display_row_start * 5)]][2]))
	}
	else
	{
		draw_sprite(_sprite, 0, inventory_card_start_x + (CARD_WIDTH * 0.5) + (_i % 5) * (CARD_WIDTH + 8), inventory_card_start_y + CARD_HEIGHT + floor(_i / 5) * (CARD_HEIGHT + 16));
		scr_text_setup(fnt_dialogue_text, fa_center, fa_top, #353738);
		draw_text(inventory_card_start_x + (CARD_WIDTH * 0.5) + (_i % 5) * (CARD_WIDTH + 8), inventory_card_start_y + CARD_HEIGHT + floor(_i / 5) * (CARD_HEIGHT + 16), "x" + string(inventory_manager.item_inventory[inventory_manager.item_found[_i + (card_display_row_start * 5)]][1] - inventory_manager.item_inventory[inventory_manager.item_found[_i + (card_display_row_start * 5)]][2]))
	}
}
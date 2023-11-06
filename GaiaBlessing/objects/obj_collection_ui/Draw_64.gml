#region Banner and Layout
draw_set_alpha(1);
draw_sprite_stretched(spr_dialogue_background, 0, screen_border, screen_border, NATIVE_GUI_RESOLUTION_WIDTH - 2 * screen_border, NATIVE_GUI_RESOLUTION_HEIGHT - 2 * screen_border);

scr_text_setup(fnt_gui_dialogue_text, fa_left, fa_top, #353738);
draw_text(screen_border + 10, screen_border, "Submit Card to Complete Game");

#endregion

draw_sprite(spr_card_114, 0, NATIVE_RESOLUTION_WIDTH * 0.5, NATIVE_GUI_RESOLUTION_HEIGHT * 0.5);
scr_text_setup(fnt_dialogue_text, fa_center, fa_middle, #353738);
draw_text(NATIVE_RESOLUTION_WIDTH * 0.5, NATIVE_GUI_RESOLUTION_HEIGHT * 0.5 + 10, "Require: 3");
draw_text(NATIVE_RESOLUTION_WIDTH * 0.5, NATIVE_GUI_RESOLUTION_HEIGHT * 0.5 + 20, "You currently have: " +  string(inventory_manager.item_inventory[114][1]));

draw_sprite_stretched(spr_dialogue_background, 0, NATIVE_RESOLUTION_WIDTH * 0.5 - 50, NATIVE_GUI_RESOLUTION_HEIGHT * 0.5 + 40, 100, 20);
draw_text(NATIVE_RESOLUTION_WIDTH * 0.5, NATIVE_GUI_RESOLUTION_HEIGHT * 0.5 + 50, "Submit");

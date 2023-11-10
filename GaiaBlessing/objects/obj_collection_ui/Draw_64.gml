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
draw_text(5 + (ui_tab_name_bg_width / 2), 10, "Request Board");

#endregion

draw_sprite_stretched(spr_ui_option_background, 1, 15, 46, NATIVE_GUI_RESOLUTION_WIDTH - 30, 276);

draw_sprite(spr_card_101, 3, NATIVE_RESOLUTION_WIDTH * 0.5, NATIVE_GUI_RESOLUTION_HEIGHT * 0.5);
scr_text_setup(global.font_large, fa_center, fa_middle, c_white);
draw_text(NATIVE_RESOLUTION_WIDTH * 0.5, NATIVE_GUI_RESOLUTION_HEIGHT * 0.5 + 20, "Require: 3");
draw_text(NATIVE_RESOLUTION_WIDTH * 0.5, NATIVE_GUI_RESOLUTION_HEIGHT * 0.5 + 40, "You currently have: " +  string(inventory_manager.item_inventory[101][4]));

draw_sprite_stretched(spr_ui_option_background, 1, NATIVE_RESOLUTION_WIDTH * 0.5 - 50, NATIVE_GUI_RESOLUTION_HEIGHT * 0.5 + 60, 100, 20);
draw_text(NATIVE_RESOLUTION_WIDTH * 0.5, NATIVE_GUI_RESOLUTION_HEIGHT * 0.5 + 70, "Submit");

input_manager = global.instance_manager_input;
inventory_manager = global.instance_manager_inventory;
deck_manager = global.instance_manager_deck;
ui_manager = global.instance_manager_ui;

screen_border = 32;

deck_divide_line = NATIVE_GUI_RESOLUTION_WIDTH * 0.74;
deck_sprite_start_x = deck_divide_line + 8;
deck_text_start_x = deck_sprite_start_x + 24;
deck_number_start_x = NATIVE_GUI_RESOLUTION_WIDTH - screen_border - 8;

inventory_card_start_x = 28;
inventory_card_start_y = 86;
inventory_card_end_x = inventory_card_start_x + 4 * (CARD_WIDTH + 16);
inventory_card_end_y = inventory_card_start_y + (3 * (CARD_HEIGHT + 16));

card_display_row_start = 0;
card_display_column_start = 0;

deck_sprite_width = (NATIVE_GUI_RESOLUTION_WIDTH - deck_divide_line) - screen_border - 36;

focused_card = -1;
focused_card_x = 0;
focused_card_y = 0;

focused_remove = -1;

ui_tab_name_bg_width = 120;
ui_tab_height = 24;

ui_tab = 0;

card_selected = 1;
card_row = 1;
card_column = 1;
card_start_row = 1;

game_paused_image_speed = 0;

scr_generate_found_array();
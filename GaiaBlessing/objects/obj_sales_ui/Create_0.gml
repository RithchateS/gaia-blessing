input_manager = global.instance_manager_input;
inventory_manager = global.instance_manager_inventory;
deck_manager = global.instance_manager_deck;
ui_manager = global.instance_manager_ui;

screen_border = 32;

deck_divide_line = NATIVE_GUI_RESOLUTION_WIDTH * 0.74;
deck_sprite_start_x = deck_divide_line + 8;
deck_text_start_x = deck_sprite_start_x + 24;
deck_number_start_x = NATIVE_GUI_RESOLUTION_WIDTH - screen_border - 8;

inventory_card_start_x = screen_border + 22;
inventory_card_start_y = screen_border + 50;
inventory_card_end_x = inventory_card_start_x + 5 * (CARD_WIDTH + 8);
inventory_card_end_y = inventory_card_start_y + (3 * (CARD_HEIGHT + 8));

card_display_row_start = 0;
card_display_column_start = 0;

deck_sprite_width = (NATIVE_GUI_RESOLUTION_WIDTH - deck_divide_line) - screen_border - 36;

focused_card = -1;
focused_card_x = 0;
focused_card_y = 0;

focused_remove = -1;

scr_generate_found_array();
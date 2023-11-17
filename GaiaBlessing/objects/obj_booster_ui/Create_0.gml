input_manager = global.instance_manager_input;
inventory_manager = global.instance_manager_inventory;
deck_manager = global.instance_manager_deck;
ui_manager = global.instance_manager_ui;

screen_border = 32;

booster_start_x = NATIVE_RESOLUTION_WIDTH * 0.5 - 58;
booster_width = 116;
booster_start_y = screen_border + 40;
booster_gap_for_animation = 24;
booster_height = 72;

focused_booster = -1;

booster_generated = false;
booster_animation_ended = false;
frame_since_booster_ended = 0;
generated_cards = [];
card1_sprite = 0;
card2_sprite = 0;
card3_sprite = 0;


game_paused_image_speed = 0;

ui_tab_name_bg_width = 120;
ui_tab_height = 24;

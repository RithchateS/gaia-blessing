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

booster_frame = 0;

card1_x1 = NATIVE_GUI_RESOLUTION_WIDTH / 4; 
card1_y1 = floor(NATIVE_GUI_RESOLUTION_HEIGHT / 3);
card1_x2 = NATIVE_GUI_RESOLUTION_WIDTH / 4; 
card1_y2 = floor(NATIVE_GUI_RESOLUTION_HEIGHT / 3);

card2_x1 = NATIVE_GUI_RESOLUTION_WIDTH / 2; 
card2_y1 = floor(NATIVE_GUI_RESOLUTION_HEIGHT / 3);
card2_x2 = NATIVE_GUI_RESOLUTION_WIDTH / 2; 
card2_y2 = floor(NATIVE_GUI_RESOLUTION_HEIGHT / 3);

card3_x1 = 3 * NATIVE_GUI_RESOLUTION_WIDTH / 4; 
card3_y1 = floor(NATIVE_GUI_RESOLUTION_HEIGHT / 3);
card3_x2 = 3 * NATIVE_GUI_RESOLUTION_WIDTH / 4; 
card3_y2 = floor(NATIVE_GUI_RESOLUTION_HEIGHT / 3);

card1_x1_destination = card1_x1 - (CARD_WIDTH / 2);
card1_x2_destination = card1_x1 + (CARD_WIDTH / 2);
card1_y1_destination = card1_y1 - (CARD_HEIGHT / 2);
card1_y2_destination = card1_y1 + (CARD_HEIGHT / 2);

card2_x1_destination = card2_x1 - (CARD_WIDTH / 2);
card2_x2_destination = card2_x1 + (CARD_WIDTH / 2);
card2_y1_destination = card2_y1 - (CARD_HEIGHT / 2);
card2_y2_destination = card2_y1 + (CARD_HEIGHT / 2);

card3_x1_destination = card3_x1 - (CARD_WIDTH / 2);
card3_x2_destination = card3_x1 + (CARD_WIDTH / 2);
card3_y1_destination = card3_y1 - (CARD_HEIGHT / 2);
card3_y2_destination = card3_y1 + (CARD_HEIGHT / 2);

card1_lerp_progress = 0;
card2_lerp_progress = 0;
card3_lerp_progress = 0;

game_paused_image_speed = 0;

ui_tab_name_bg_width = 120;
ui_tab_height = 24;

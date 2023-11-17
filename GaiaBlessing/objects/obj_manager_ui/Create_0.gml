#region Menu Related UI

// Options to show when pressing esc mid-game, not computer.
pause_option = [
	"Continue",
	"Quit to Title",
	"Quit to Desktop"
];

pause_option_count = array_length(pause_option);
pause_option_selected = 0;


// Options to show when checking the in-game computer.
computer_option = [
	"Deck Manager",
	"Credit Exchange",
	"Booster Packs",
	"Project Progress",
	"Options",
	"Quit Simulation"
];

menu_just_opened = false;

show_menu_ui = false; // Whether menu is open or not
current_menu_level = 0; // What the current menu layer is
previous_menu_level = -1;

skip = false;

#region Persistant
menu_background_alpha = 0;
menu_background_max = 0.9;
menu_background_min = 0;
menu_background_alpha_rate = 0.2;

menu_border_top_start_y = -24;
menu_border_top_destination_y = 0;
menu_border_top_current_y = menu_border_top_start_y;
menu_border_top_y_rate = 5;

menu_border_bottom_start_y = NATIVE_GUI_RESOLUTION_HEIGHT - 24; // Bottom side use reverse logic so code might seems a bit weird to read
menu_border_bottom_destination_y = NATIVE_GUI_RESOLUTION_HEIGHT;
menu_border_bottom_current_y = menu_border_bottom_destination_y;
menu_border_bottom_y_rate = 5;

menu_button_back_current_x = 561;
menu_button_back_start_y = -24;
menu_button_back_destination_y = 1;
menu_button_back_current_y = menu_button_back_start_y;
menu_button_back_y_rate = 5;
menu_button_back_focus = 0;
menu_button_back_width = 78;
menu_button_back_height = 22;
#endregion

#region Menu Level 0
menu_0_start_y = -25;
menu_0_destination_y = 0;
menu_0_current_y = menu_0_start_y;
menu_0_y_rate = 5;

menu_0_array_start_x = 48;
menu_0_array_start_y = 66;
menu_0_array_lerp_progress = 0;
menu_0_option_width = 150;
menu_0_option_height = 94;
menu_0_option_x_progress = 0;
menu_0_option_y_progress = 0;
menu_0_option_current_x = 75;
menu_0_option_current_y = 47;
menu_0_option_current_width = 0;
menu_0_option_current_height = 0;
menu_0_sep_x = 198;
menu_0_sep_y = 136;
menu_0_focus = -1;
#endregion

menu_1_title = "";
menu_1_start_y = -25;
menu_1_destination_y = 0;
menu_1_current_y = menu_0_start_y;
menu_1_y_rate = 5;

#region Deck Manager

deck_manager_start_x = 15;
deck_manager_start_y = 45;
deck_manager_lerp_progress = 0;
deck_manager_width = 480;
deck_manager_height = 279;
deck_manager_current_width = 0;
deck_manager_current_height = 0;
deck_manager_tab_focus = 0;
deck_manager_tab_width = 96;
deck_manager_tab_height = 21;

deck_manager_card_start_x = 28;
deck_manager_card_start_y = 86;

deck_manager_focused_card = 0;
deck_manager_focused_row = 0;
deck_manager_focused_column = 0;

deck_status_start_x = 510;
deck_status_start_y = 67;
deck_status_width = 115;
deck_status_height = 257;
deck_status_current_width = 0;
deck_status_current_height = 0;
clear_button_start_x = 536;
clear_button_start_y = 291;
clear_button_width = 66;
clear_button_height = 24;
clear_button_focus = 0;
remove_button_start_x = 599;
remove_button_start_y = 89;
remove_button_width = 7;
remove_button_height = 7;
remove_button_sep_y = 12;
deck_focused_removed = -1;

deck_manager_card_start_row = 1;

deck_manager_tabs = [
	"Standard",
	"Diverse",
	"Dedicate",
	"Rush",
	"Seeds"
]

#endregion

#region Credit Exchange

credit_exchange_start_x = 15;
credit_exchange_start_y = 45;
credit_exchange_lerp_progress = 0;
credit_exchange_width = 480;
credit_exchange_height = 279;
credit_exchange_current_width = 0;
credit_exchange_current_height = 0;
credit_exchange_tab_focus = 0;
credit_exchange_tab_width = 96;
credit_exchange_tab_height = 21;

credit_exchange_card_start_row = 1;

credit_exchange_card_start_x = 28;
credit_exchange_card_start_y = 86;

credit_exchange_focused_card = 0;
credit_exchange_focused_row = 0;
credit_exchange_focused_column = 0;

sales_start_x = 510;
sales_start_y = 67;
sales_width = 115;
sales_height = 257;
sales_current_width = 0;
sales_current_height = 0;

sales_value_total = 0;
sales = [];
sales_count = 0;
card_types_in_sales = [];
card_types_in_sales_count = 0;

sell_button_start_x = 536;
sell_button_start_y = 291;
sell_button_width = 66;
sell_button_height = 24;
sell_button_focus = 0;

#endregion

#region Booster Packs

booster_menu_start_x = 15;
booster_menu_start_y = 45;
booster_menu_lerp_progress = 0;
booster_menu_width = NATIVE_GUI_RESOLUTION_WIDTH - (booster_menu_start_x * 2);
booster_menu_height = 278;
booster_menu_current_width = 0;
booster_menu_current_height = 0;

focused_booster = -1;

booster_generated = false;
generated_cards = [];
booster_animation_ended = false;
card1_sprite = 0;
card2_sprite = 0;
card3_sprite = 0;

card1_x1 = NATIVE_GUI_RESOLUTION_WIDTH / 4; 
card1_y1 = floor(NATIVE_GUI_RESOLUTION_HEIGHT / 2);
card1_x2 = NATIVE_GUI_RESOLUTION_WIDTH / 4; 
card1_y2 = floor(NATIVE_GUI_RESOLUTION_HEIGHT / 2);

card2_x1 = NATIVE_GUI_RESOLUTION_WIDTH / 2; 
card2_y1 = floor(NATIVE_GUI_RESOLUTION_HEIGHT / 2);
card2_x2 = NATIVE_GUI_RESOLUTION_WIDTH / 2; 
card2_y2 = floor(NATIVE_GUI_RESOLUTION_HEIGHT / 2);

card3_x1 = 3 * NATIVE_GUI_RESOLUTION_WIDTH / 4; 
card3_y1 = floor(NATIVE_GUI_RESOLUTION_HEIGHT / 2);
card3_x2 = 3 * NATIVE_GUI_RESOLUTION_WIDTH / 4; 
card3_y2 = floor(NATIVE_GUI_RESOLUTION_HEIGHT / 2);

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

gacha_result_card_focus = -1;

#endregion

#region Qest Menu

quest_menu_start_x = 15;
quest_menu_start_y = 45;
quest_menu_lerp_progress = 0;
quest_menu_width = NATIVE_GUI_RESOLUTION_WIDTH - (booster_menu_start_x * 2);
quest_menu_height = 278;
quest_menu_current_width = 0;
quest_menu_current_height = 0;

quest_option_start_x = 21;
quest_option_start_y = 70;
quest_option_width = 120;
quest_option_height = 24;
quest_option_gap = 30;
quest_option_focus = -1;
quest_name = [
	"Milestone 1",
	"Milestone 2",
	"Milestone 3",
	"Milestone 4",
	"Milestone 5"
];

quest_detail = [
	"A simple task, this will prove that you have at least mastered the basic skills needed to be a farmer. Please submit 5 Legend-worthy chillis.",
	"The council will require you to demonstrate your basic skills first, please check back once you have completed the first milestone.",
	"The council will require you to demonstrate your basic skills first, please check back once you have completed the first milestone.",
	"The council will require you to demonstrate your basic skills first, please check back once you have completed the first milestone.",
	"The council will require you to demonstrate your basic skills first, please check back once you have completed the first milestone."
];

quest_sprite = [
	[spr_card_101, 3],
	[spr_card_mystery, 0],
	[spr_card_mystery, 0],
	[spr_card_mystery, 0],
	[spr_card_mystery, 0]
];

quest_id = [
	101,
	105,
	105,
	105,
	105
];

quest_status = [0, 0, 0, 0, 0];

quest_detail_show = false;
quest_detail_start_x = quest_option_start_x + quest_option_width + 24;
quest_detail_start_y = quest_option_start_y;
quest_detail_width = 453;
quest_detail_height = 246;
quest_detail_lerp_progress = 0;
quest_detail_current_width = 0;
quest_detail_current_height = 0;

quest_submit_focus = 0;


#endregion

menu_2_start_y = -25;
menu_2_destination_y = 0;
menu_2_current_y = menu_0_start_y;
menu_2_y_rate = 5;

#endregion

#region Cards related UI

show_card_ui = false; // Whether card ui is being shown or not

card_to_display = [];
card_to_display_amount = 0;

card_selected = 0;
card_selected_row = 0;
card_selected_column = 0;
card_display_row_start = 0;

show_cards = true;
card_from_key = false;
focused_card = -1;
deck_view_focused_card = -1;
card_information = [];
focused_card_hold = false;
focused_x_difference = 0;
focused_y_difference = 0;

#endregion






card_book_selected = 1;
card_book_tab = 1;
card_book_row = 1;
card_book_column = 1;
card_book_start_row = 1;

ui_tab_name_bg_width = 120;
ui_tab_height = 24;

time_since_creation = 0;

// Making sure that draw size is still the same.
display_set_gui_size(NATIVE_GUI_RESOLUTION_WIDTH, NATIVE_GUI_RESOLUTION_HEIGHT);
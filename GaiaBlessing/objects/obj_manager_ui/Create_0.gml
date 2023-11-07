paused_tab = global.game_paused_tab;

clip_surface = -1;

pause_option = [
	"Continue",
	"Save & Quit",
	"Save & Quit to Desktop"
];

show_ui = true;

option_count = array_length(pause_option);
pause_option_selected = 0;

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

card_book_tab = 1;
card_book_row = 1;
card_book_column = 1;
card_book_start_row = 1;

ui_tab_name_bg_width = 120;
ui_tab_height = 24;

time_since_creation = 0;

display_set_gui_size(NATIVE_GUI_RESOLUTION_WIDTH, NATIVE_GUI_RESOLUTION_HEIGHT);
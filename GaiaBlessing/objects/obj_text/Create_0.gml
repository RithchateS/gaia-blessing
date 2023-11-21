x1 = NATIVE_GUI_RESOLUTION_WIDTH / 2; 
y1 = NATIVE_GUI_RESOLUTION_HEIGHT - 80;
x2 = NATIVE_GUI_RESOLUTION_WIDTH / 2;
y2 = NATIVE_GUI_RESOLUTION_HEIGHT - 10;

x1_destination = NATIVE_GUI_RESOLUTION_WIDTH / 4;
x2_destination = 3* NATIVE_GUI_RESOLUTION_WIDTH / 4;

lerp_progress = 0;
text_progress = 0;
text_finished = false;
textbox_offset = 20;

response_count = 0;
response_select = 0;

text_to_display = "";

closing = false;

chatterbox = ChatterboxCreate();
ChatterboxAddFunction("advance_day", scr_advance_day);
ChatterboxAddFunction("game_restart", game_restart);
ChatterboxAddFunction("save_delete", scr_delete_save);
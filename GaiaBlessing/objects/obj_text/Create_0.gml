x1 = NATIVE_GUI_RESOLUTION_WIDTH / 2; 
y1 = NATIVE_GUI_RESOLUTION_HEIGHT - 140;
x2 = NATIVE_GUI_RESOLUTION_WIDTH / 2;
y2 = NATIVE_GUI_RESOLUTION_HEIGHT;

x1_destination = 0;
x2_destination = NATIVE_GUI_RESOLUTION_WIDTH;

lerp_progress = 0;
text_progress = 0;
text_finished = false;
textbox_offset = 20;

response_count = 0;
response_select = 0;

text_to_display = "";

chatterbox = ChatterboxCreate();
ChatterboxAddFunction("advance_day", scr_advance_day);
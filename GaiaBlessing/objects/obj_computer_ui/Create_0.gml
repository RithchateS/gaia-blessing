x1 = NATIVE_GUI_RESOLUTION_WIDTH / 2; 
y1 = NATIVE_GUI_RESOLUTION_HEIGHT / 2;
x2 = NATIVE_GUI_RESOLUTION_WIDTH / 2;
y2 = NATIVE_GUI_RESOLUTION_HEIGHT / 2;

x1_destination = NATIVE_GUI_RESOLUTION_WIDTH / 4;
x2_destination = 3 * NATIVE_GUI_RESOLUTION_WIDTH / 4;
y1_destination = NATIVE_GUI_RESOLUTION_HEIGHT / 4;
y2_destination = 3 * NATIVE_GUI_RESOLUTION_HEIGHT / 4;

lerp_progress = 0;
textbox_offset = 20;

response_count = 0;
response_select = 0;

text_to_display = [
	"What would you like to access?",
	"Deck Manager",
	"Card Seller",
	"Booster Packs",
	"Request Board"
];

selected_option = 0;
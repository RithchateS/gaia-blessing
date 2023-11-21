/// @desc Initialize & Globals
randomize();

global.deck_debug_mode = false;

global.game_save_slot = 0;

global.game_paused = false;

global.text_speed = 0.75;

global.target_room = -1;
global.target_x = -1;
global.target_y = -1;
global.target_direction = 0;

global.game_day = 1;
global.first_hand_generated = false;

global.player_energy_max = 3;
global.player_energy_current = global.player_energy_max;

global.player_coin = 0;

global.session_time = 0;

global.instance_manager_deck = instance_create_layer(0, 0, layer, obj_manager_deck);
global.instance_manager_camera = instance_create_layer(0, 0, layer, obj_manager_camera);
global.instance_manager_ui = instance_create_layer(0, 0, layer, obj_manager_ui);
global.instance_manager_input = instance_create_layer(0, 0, layer, obj_manager_input);
global.instance_manager_card = instance_create_layer(0, 0, layer, obj_manager_card);
global.instance_manager_farm = instance_create_layer(0, 0, layer, obj_manager_farm);
global.instance_manager_inventory = instance_create_layer(0, 0, layer, obj_manager_inventory);

global.font_number = font_add_sprite_ext(spr_font_number, "1234567890/", false, 1);
global.font_number_large = font_add_sprite_ext(spr_font_number_large, "0123456789", true, 0);
global.font_large = font_add_sprite_ext(spr_font_large, "!#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_abcdefghijklmnopqrstuvwxyz{|}~", true, 0);
global.font_capital = font_add_sprite_ext(spr_font_capital, "!#$%'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZxcurl", true, 0);
global.font_small = font_add_sprite_ext(spr_font_small, "!#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_abcdefghijklmnopqrstuvwxyz{|}~", true, 0);

yarn_file_to_load = YARN_FILE;
ChatterboxLoadFromFile(yarn_file_to_load);

surface_resize(application_surface, NATIVE_RESOLUTION_WIDTH, NATIVE_RESOLUTION_HEIGHT);

scr_room_transition(TRANSITION_TYPE.FADE, ROOM_START, 0.02);
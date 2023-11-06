// Get Player Input
key_left = input_manager.key_left;
key_right = input_manager.key_right;
key_up = input_manager.key_up;
key_down = input_manager.key_down;
key_activate = input_manager.key_activate;
key_attack = input_manager.key_attack;
key_item = input_manager.key_item;

input_direction = input_manager.input_direction;
input_magnitude = input_manager.input_magnitude;

if (!global.game_paused)
{
	script_execute(state);
}

depth = -bbox_bottom;
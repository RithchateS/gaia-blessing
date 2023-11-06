state = scr_player_state_free;
last_state = state;

collision_map = layer_tilemap_get_id(layer_get_id("Collision"));

input_manager = global.instance_manager_input;

key_left = input_manager.key_left;
key_right = input_manager.key_right;
key_up = input_manager.key_up;
key_down = input_manager.key_down;
key_activate = input_manager.key_activate;
key_attack = input_manager.key_attack;
key_item = input_manager.key_item;

input_direction = input_manager.input_direction;
input_magnitude = input_manager.input_magnitude;

old_input_direction = 0;

face_direction = 0;
near_interactable = false;
activate = noone;

image_speed = 0;
horizontal_speed = 0;
vertical_speed = 0;
walk_speed = 2.0;

sprite_run = spr_player_run;
sprite_idle = spr_player_idle_old;
sprite_use = spr_player_use;
local_frame = 0;

text_cooldown = false;

applied_buff[0] = -1;
buffs_in_play = 0;

if (global.target_x != -1)
{
	x = global.target_x;
	y = global.target_y;
	direction = global.target_direction;
}
#region Free State (Idle & Movement)
function scr_player_state_free(){
	// Movement
	horizontal_speed = lengthdir_x(input_magnitude * walk_speed, input_direction);
	vertical_speed = lengthdir_y(input_magnitude * walk_speed, input_direction);

	scr_player_collision();

	// Update Sprites
	var _old_sprite = sprite_index;
	if (input_magnitude != 0)
	{
		if (!key_left && !key_right)
		{
			face_direction = input_direction;
			sprite_index = sprite_run;
		}
		else
		{
			direction = input_direction;	// Ensure direction don't change unless there's an input. Prevent player defaulting to right direction with no input.
			face_direction = direction;
			sprite_index = sprite_run;
		}
	}
	else
	{
		sprite_index = sprite_idle;
	}

	if (_old_sprite != sprite_index)
	{
		local_frame = 0;
	}

	// Update Image Index
	scr_animate_sprite();
	
	// Check for an entity to activate
	var _activate_x_offset = x + lengthdir_x(16, face_direction);
	var _activate_y_offset = y + lengthdir_y(16, face_direction);
	var _activate_check_radius = 16;
	var _activate_list = ds_list_create();
	activate = noone;
		
	var _entities_found = collision_rectangle_list(
		_activate_x_offset - _activate_check_radius,
		_activate_y_offset - _activate_check_radius,
		_activate_x_offset + _activate_check_radius,
		_activate_y_offset + _activate_check_radius,
		obj_parent_entity,
		false,
		true,
		_activate_list,
		true
	);
	
	// If first instance of entity has no script, try the next one until list is empty
	while (_entities_found > 0)
	{
		var _check = _activate_list[| --_entities_found];
		if (_check.entity_activate_script != -1)
		{
			activate = _check;
			break;
		}
	}
	
	ds_list_destroy(_activate_list);
	
	// If there is nothing, or something with no activate script
	if (activate == noone)
	{
		near_interactable = false;
	}
	else 
	{
		near_interactable = true;
	}
	
	if (key_activate && near_interactable)
	{
		// If there is something with an activate script
		scr_execute_array(activate.entity_activate_script, activate.entity_activate_argument);
			
		// If the things we activate is an NPC, make it face towards the player
		if (activate.entity_npc)
		{
			with (activate)
			{
				direction = point_direction(x, y, other.x, other.y);
				image_index = CARDINAL_DIRECTION;
			}
		}
		
	}
	
	if (key_attack)
	{
		state = scr_player_state_use;
	}
}
#endregion

function scr_player_state_transition(){
	scr_player_collision();
	scr_animate_sprite();
}

function scr_player_state_use() {
	var _old_sprite = sprite_index;
	
	sprite_index = sprite_use;
	
	if (_old_sprite != sprite_index)
	{
		local_frame = 0;
	}
	
	var _animation_end = scr_animate_sprite();
	
	if (_animation_end)
	{
		if (instance_exists(obj_crop_info))
		{
			state = scr_player_state_locked;
		}
		else
		{
			state = scr_player_state_free;
		}
	}
}

function scr_player_state_locked(){
	sprite_index = sprite_idle;
	scr_animate_sprite();
}
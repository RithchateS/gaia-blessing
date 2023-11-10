function scr_computer(_id){
	show_debug_message("Computer called")
	var _obj = obj_computer_ui;
	
	with (all)
	{
		game_paused_image_speed = image_speed;
		image_speed = 0;
	}
	
	if (obj_player.text_cooldown == true)
	{
		
	}
	else
	{
		with (instance_create_layer(0, 0, "Instances", _obj))
		{
			if (instance_exists(other))
			{
				origin_instance = other.id;
			}
			else
			{
				origin_instance = noone;
			}
		}
	
		with (obj_player)
		{
			if (state != scr_player_state_locked)
			{
				last_state = state;
				state = scr_player_state_locked;
			}
		}
	}
}

function scr_inventory(_id){
	show_debug_message("Inventory called")
	var _obj = obj_inventory_ui;
	
	with (all)
	{
		game_paused_image_speed = image_speed;
		image_speed = 0;
	}
	
	if (obj_player.text_cooldown == true)
	{
		
	}
	else
	{
		with (instance_create_layer(0, 0, "Instances", _obj))
		{
			if (instance_exists(other))
			{
				origin_instance = other.id;
				// show_debug_message(object_get_name(origin_instance.object_index));
			}
			else
			{
				origin_instance = noone;
			}
		}
	
		with (obj_player)
		{
			if (state != scr_player_state_locked)
			{
				last_state = state;
				state = scr_player_state_locked;
			}
		}
	}
}

function scr_sales(_id){
	var _obj = obj_sales_ui;
	
	with (all)
	{
		game_paused_image_speed = image_speed;
		image_speed = 0;
	}
	
	if (obj_player.text_cooldown == true)
	{
		
	}
	else
	{
		with (instance_create_layer(0, 0, "Instances", _obj))
		{
			if (instance_exists(other))
			{
				origin_instance = other.id;
				// show_debug_message(object_get_name(origin_instance.object_index));
			}
			else
			{
				origin_instance = noone;
			}
		}
	
		with (obj_player)
		{
			if (state != scr_player_state_locked)
			{
				last_state = state;
				state = scr_player_state_locked;
			}
		}
	}
}


function scr_booster(_id){
	var _obj = obj_booster_ui;
	
	with (all)
	{
		game_paused_image_speed = image_speed;
		image_speed = 0;
	}
	
	if (obj_player.text_cooldown == true)
	{
		
	}
	else
	{
		with (instance_create_layer(0, 0, "Instances", _obj))
		{
			if (instance_exists(other))
			{
				origin_instance = other.id;
				// show_debug_message(object_get_name(origin_instance.object_index));
			}
			else
			{
				origin_instance = noone;
			}
		}
	
		with (obj_player)
		{
			if (state != scr_player_state_locked)
			{
				last_state = state;
				state = scr_player_state_locked;
			}
		}
	}
}

function scr_booster_generate(_id){
	switch(_id)
	{
		case 1:
			var _random_array = [];
			var _random_array_count = 0;
			repeat (3)
			{
				_random_array[_random_array_count] = irandom_range(61, 65);
				_random_array_count++;
			}
			
			return _random_array;
			
		case 2:
			var _random_array = [];
			var _random_array_count = 0;
			repeat (3)
			{
				_random_array[_random_array_count] = irandom_range(1,14);
				while ((_random_array[_random_array_count] == 7) || (_random_array[_random_array_count] == 8))
				{
					_random_array[_random_array_count] = irandom_range(1,14);
				}
				_random_array_count++;
			}
			
			return _random_array;
			
		default:
			show_debug_message("Invalid booster id");
			break;
	}
}

function scr_collection(_id){
	var _obj = obj_collection_ui;
	
	with (all)
	{
		game_paused_image_speed = image_speed;
		image_speed = 0;
	}
	
	if (obj_player.text_cooldown == true)
	{
		
	}
	else
	{
		with (instance_create_layer(0, 0, "Instances", _obj))
		{
			if (instance_exists(other))
			{
				origin_instance = other.id;
				// show_debug_message(object_get_name(origin_instance.object_index));
			}
			else
			{
				origin_instance = noone;
			}
		}
	
		with (obj_player)
		{
			if (state != scr_player_state_locked)
			{
				last_state = state;
				state = scr_player_state_locked;
			}
		}
	}
}
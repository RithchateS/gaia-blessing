function scr_computer(_id){
	if (!global.instance_manager_ui.show_pause_menu)
	{
		if (!global.game_paused)
		{
			global.game_paused = !global.game_paused;
			with (all)
			{
				game_paused_image_speed = image_speed;
				image_speed = 0;
			}
			with (global.instance_manager_ui)
			{
				skip = true;
				show_menu_ui = true;
				previous_menu_level = -1;
				current_menu_level = 0;
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
		case 0:
			var _random_array = [];
			var _random_array_count = 0;
			repeat (3)
			{
				var _random_chance = irandom_range(1, 50);
				if (_random_chance <= 35)
				{
					_random_array[_random_array_count] = irandom_range(1, 11);
					_random_array_count++;
				}
				else if (_random_chance <= 45)
				{
					_random_array[_random_array_count] = irandom_range(12, 15);
					_random_array_count++;
				}
				else if (_random_chance <= 49)
				{
					_random_array[_random_array_count] = irandom_range(16, 19);
					_random_array_count++;
				}
				else
				{
					_random_array[_random_array_count] = 20;
					_random_array_count++;
				}
			}
			
			return _random_array;
			
		case 1:
			var _random_array = [];
			var _random_array_count = 0;
			repeat (3)
			{
				var _random_chance = irandom_range(1, 150);
				if (_random_chance <= 35)
				{
					_random_array[_random_array_count] = irandom_range(21, 28);
					_random_array_count++;
				}
				else if (_random_chance <= 45)
				{
					_random_array[_random_array_count] = irandom_range(29, 34);
					_random_array_count++;
				}
				else if (_random_chance <= 49)
				{
					_random_array[_random_array_count] = irandom_range(35, 38);
					_random_array_count++;
				}
				else if (_random_chance <= 50)
				{
					_random_array[_random_array_count] = irandom_range(39, 40);
					_random_array_count++;
				}
				else if (_random_chance <= 85)
				{
					_random_array[_random_array_count] = irandom_range(41, 48);
					_random_array_count++;
				}
				else if (_random_chance <= 95)
				{
					_random_array[_random_array_count] = irandom_range(49, 54);
					_random_array_count++;
				}
				else if (_random_chance <= 99)
				{
					_random_array[_random_array_count] = irandom_range(55, 58);
					_random_array_count++;
				}
				else if (_random_chance <= 100)
				{
					_random_array[_random_array_count] = irandom_range(59, 60);
					_random_array_count++;
				}
				else if (_random_chance <= 135)
				{
					_random_array[_random_array_count] = irandom_range(61, 65);
					_random_array_count++;
				}
				else if (_random_chance <= 145)
				{
					_random_array[_random_array_count] = irandom_range(66, 71);
					_random_array_count++;
				}
				else if (_random_chance <= 149)
				{
					_random_array[_random_array_count] = irandom_range(72, 78);
					_random_array_count++;
				}
				else
				{
					_random_array[_random_array_count] = irandom_range(79, 80);
					_random_array_count++;
				}
			}
			
			return _random_array;
			
		case 2:
			var _random_array = [];
			var _random_array_count = 0;
			repeat (3)
			{
				var _random_chance = irandom_range(1, 50);
				if (_random_chance <= 35)
				{
					_random_array[_random_array_count] = irandom_range(81, 88);
					_random_array_count++;
				}
				else if (_random_chance <= 45)
				{
					_random_array[_random_array_count] = irandom_range(89, 94);
					_random_array_count++;
				}
				else if (_random_chance <= 49)
				{
					_random_array[_random_array_count] = irandom_range(95, 98);
					_random_array_count++;
				}
				else
				{
					_random_array[_random_array_count] = irandom_range(99, 100);
					_random_array_count++;
				}
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
function scr_crop_information(_slot, _background = 0){
	var _obj = obj_crop_info;
	
	if (obj_player.text_cooldown == true)
	{
		// Do nothing
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
			
			crop_number = _slot;
			background = _background;
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


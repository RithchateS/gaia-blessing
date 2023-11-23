function scr_new_textbox(_node, _background = 0){
	var _obj = obj_text;
	
	if (instance_exists(obj_player) && obj_player.text_cooldown == true)
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
		
			ChatterboxJump(chatterbox, _node);
			background = _background;
		
			chatterbox_update();
		}
		
		if (instance_exists(obj_player))
		{
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
}

function scr_new_popup(_text, _speed = 1, _time = 20, _color = c_white)
{
	var _obj = obj_popup;
	
	if (instance_exists(obj_player))
	{
		with (instance_create_layer(0, 0, "Instances", _obj))
		{
			text_to_display = _text;
			y_rate = _speed;
			alarm[0] = _time;
			text_color = _color;
		}
	}
}
function scr_player_collision(){
	var _collision = false;
	
	/*
	
	var _entity_list = ds_list_create();
	
	// Horizontal Tiles
	if (tilemap_get_at_pixel(collision_map, x + horizontal_speed, y))
	{
		x -= x mod TILE_SIZE;	// Always  assuming the player to be moving left
		if (sign(horizontal_speed) == 1)	// In case the player is moving right, add horizonal value to the player.
		{
			x += TILE_SIZE - 1;
		}
		horizontal_speed = 0;
		_collision = true;
	}
	
	// Horizontal Entities
	var _entity_count = instance_position_list(x + horizontal_speed, y, obj_parent_entity, _entity_list, false);
	var _snap_x;
	
	while (_entity_count > 0)
	{
		var _entity_check = _entity_list[| 0];
		if (_entity_check.entity_collision == true)
		{
			// Move as close as we can
			if (sign(horizontal_speed) == -1)
			{
				_snap_x = _entity_check.bbox_right + 1;
			}
			else
			{
				_snap_x = _entity_check.bbox_left - 1;
			}
			x = _snap_x;
			horizontal_speed = 0;
			_collision = true;
			_entity_count = 0;
		}
		ds_list_delete(_entity_list, 0);
		_entity_count -= 1;
		
	}
	
	
	// Horizontal Move
	x += horizontal_speed;
	
	// Clear List between axis
	ds_list_clear(_entity_list);
	
	// Vertical Tiles
	if (tilemap_get_at_pixel(collision_map, x, y + vertical_speed))
	{
		y -= y mod TILE_SIZE;	// Always  assuming the player to be moving up
		if (sign(vertical_speed) == 1)	// In case the player is moving down, add vertical value to the player.
		{
			y += TILE_SIZE - 1;
		}
		vertical_speed = 0;
		_collision = true;
	}
	
	// Vertical Entities
	_entity_count = instance_position_list(x, y + vertical_speed, obj_parent_entity, _entity_list, false);
	var _snap_y;
	
	while (_entity_count > 0)
	{
		var _entity_check = _entity_list[| 0];
		if (_entity_check.entity_collision == true)
		{
			// Move as close as we can
			if (sign(vertical_speed) == -1)
			{
				_snap_y = _entity_check.bbox_bottom + 1;
			}
			else
			{
				_snap_y = _entity_check.bbox_top - 1;
			}
			y = _snap_y;
			vertical_speed = 0;
			_collision = true;
			_entity_count = 0;
		}
		ds_list_delete(_entity_list, 0);
		_entity_count -= 1;
		
	}
	
	
	// Vertical Move
	y += vertical_speed;
	
	ds_list_destroy(_entity_list);
	
	*/
	
	// Horizontal Check
	var _entity_list = ds_list_create();
	
	var _entity_count = instance_position_list(x + horizontal_speed, y, obj_parent_entity, _entity_list, false);
	var _snap_x;
	
	while (_entity_count > 0)
	{
		var _entity_check = _entity_list[| 0];
		if (_entity_check.entity_collision == true)
		{
			// Move as close as we can
			if (sign(horizontal_speed) == -1)
			{
				_snap_x = _entity_check.bbox_right + 1;
			}
			else
			{
				_snap_x = _entity_check.bbox_left - 1;
			}
			x = _snap_x;
			horizontal_speed = 0;
			_collision = true;
			_entity_count = 0;
		}
		ds_list_delete(_entity_list, 0);
		_entity_count -= 1;	
	}
	
	_entity_count = instance_position_list(x, y + vertical_speed, obj_parent_entity, _entity_list, false);
	var _snap_y;
	
	while (_entity_count > 0)
	{
		var _entity_check = _entity_list[| 0];
		if (_entity_check.entity_collision == true)
		{
			// Move as close as we can
			if (sign(vertical_speed) == -1)
			{
				_snap_y = _entity_check.bbox_bottom + 1;
			}
			else
			{
				_snap_y = _entity_check.bbox_top - 1;
			}
			y = _snap_y;
			vertical_speed = 0;
			_collision = true;
			_entity_count = 0;
		}
		ds_list_delete(_entity_list, 0);
		_entity_count -= 1;
		
	}
	
	if (place_meeting(x + horizontal_speed, y, obj_parent_wall))
	{
		_collision = true;
		while (!place_meeting(x + sign(horizontal_speed), y, obj_parent_wall))
		{
			x += sign(horizontal_speed);
		}
		horizontal_speed = 0;
	}
	
	if (place_meeting(x, y + vertical_speed, obj_parent_wall))
	{
		_collision = true;
		while (!place_meeting(x, y + sign(vertical_speed), obj_parent_wall))
		{
			y += sign(vertical_speed);
		}
		vertical_speed = 0;
	}
	
	x += horizontal_speed;
	y += vertical_speed;
	
	return _collision;
}
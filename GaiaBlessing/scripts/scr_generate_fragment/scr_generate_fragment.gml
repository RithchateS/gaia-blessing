function scr_generate_fragment(_x, _y, _item_array){
	var _item_count = array_length(_item_array);
	
	if (_item_count > 1)
	{
		var _angle_per_item = 360 / _item_count;
		var _angle = random(360);
		for (var _i = 0; _i < _item_count; _i++)
		{
			with (instance_create_layer(_x, _y, "Instances", _item_array[_i]))
			{
				direction = _angle;
				spd = 0.75 + (_item_count * 0.1) + random(0.1);
			}
			_angle += _angle_per_item;
		}
	}
	else
	{
		instance_create_layer(_x, _y, "Instances", _item_array[0]);
	}
}
function scr_animate_sprite(){
	var _total_frames = (sprite_get_number(sprite_index) / 2) - 1;
	
	if (_total_frames == 1)
	{
		image_index = CARDINAL_DIRECTION;
	}
	else
	{
		image_index = (CARDINAL_DIRECTION * (_total_frames + 1)) + local_frame;
		local_frame += sprite_get_speed(sprite_index) / FRAME_RATE;
	
		// Looping Animation when the animation ends
		if (local_frame >= _total_frames)
		{
			animation_end = true;
			local_frame = 0;
		}
		else
		{
			animation_end = false;
		}
	}
	
	return animation_end;
}
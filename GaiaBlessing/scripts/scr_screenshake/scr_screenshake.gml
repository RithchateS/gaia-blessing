function scr_screenshake(_magnitude, _frames){
	// @desc scr_screenshake(magnitude, frames)
	// #arg Magnitude sets the strength of the shake (distance range)
	// @arg Frames sets the length of the shake in frames
	
	with (global.instance_manager_camera)
	{
		if (_magnitude > shake_remain)
		{
			shake_magnitude = _magnitude;
			shake_remain = shake_magnitude;
			shake_duration = _frames;
		}
	}
}

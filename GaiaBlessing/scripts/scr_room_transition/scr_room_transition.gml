function scr_room_transition(_type, _target_room, _transition_speed = TRANSITION_SPEED){
	if (!instance_exists(obj_transition))
	{
		with (instance_create_depth(0, 0, -9999, obj_transition))
		{
			type = _type;
			target_room = _target_room;
			transition_speed = _transition_speed;
		}
	}
	else
	{
		show_debug_message("Trying to transition while transition is happening!");
	}
		
}
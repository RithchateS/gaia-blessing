/// @description Cause Room Transition

if (instance_exists(obj_player) && (position_meeting(obj_player.x, obj_player.y, id)))
{
	if (!instance_exists(obj_transition))
	{
		if (target_room == r_village)
		{
			if (!global.left_house)
			{
				global.left_house = true;
				scr_generate_deck_array();
				scr_generate_first_active_hand();
				global.target_room = target_room;
				global.target_x = target_x;
				global.target_y = target_y;
				global.target_direction = obj_player.direction;
				with (obj_player) state = scr_player_state_transition;
				scr_room_transition(TRANSITION_TYPE.SLIDE, target_room);
				instance_destroy();
			}
		}
		else
		{
			global.target_room = target_room;
			global.target_x = target_x;
			global.target_y = target_y;
			global.target_direction = obj_player.direction;
			with (obj_player) state = scr_player_state_transition;
			scr_room_transition(TRANSITION_TYPE.SLIDE, target_room);
			instance_destroy();
		}
	}	
}
/// @description Progress Transition

with (obj_player) state = scr_player_state_transition;

if (leading == OUT)
{
	percent = min(1, percent + transition_speed);
	if (percent >= 1)
	{
		room_goto(target_room);
		leading = IN;
	}
}
else // leading == IN
{
	percent = max(0, percent - transition_speed);
	if (percent <= 0) // New room is fully loaded in
	{
		with (obj_player) state = scr_player_state_free;
		instance_destroy();
	}
	
}
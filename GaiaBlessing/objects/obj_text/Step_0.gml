lerp_progress += (1 - lerp_progress) / 50;
text_progress += global.text_speed;

x1 = lerp(x1, x1_destination, lerp_progress);
x2 = lerp(x2, x2_destination, lerp_progress);

var _input_manager = global.instance_manager_input;

// Response Cycling

response_count = ChatterboxGetOptionCount(chatterbox);

if (text_progress >= string_length(text_to_display))
{
	text_finished = true;
}

if (!text_finished and _input_manager.key_activate)
{
	text_progress = string_length(text_to_display);
	text_finished = true;
}
else if (ChatterboxIsWaiting(chatterbox) and text_finished and _input_manager.key_activate) 
{
	ChatterboxContinue(chatterbox);
	chatterbox_update();
}
else if (response_count)
{	
	response_select = scr_wrap(response_select + _input_manager.input_option_change_vertical, 0, response_count - 1);
	
	if _input_manager.key_activate
	{
		ChatterboxSelect(chatterbox, response_select);
		response_select = 0;
		
		chatterbox_update();
	}
}

if ChatterboxIsStopped(chatterbox)
{
	instance_destroy();
	with (obj_player)
	{
		state = last_state;
		alarm[0] = 10;
		text_cooldown = true;
	}
}
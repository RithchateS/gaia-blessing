lerp_progress += (1 - lerp_progress) / 50;

x1 = lerp(x1, x1_destination, lerp_progress);
x2 = lerp(x2, x2_destination, lerp_progress);

var _input_manager = global.instance_manager_input;

// Response Cycling

response_count = ChatterboxGetOptionCount(chatterbox);

if (ChatterboxIsWaiting(chatterbox) and (lerp_progress > 0.8) and _input_manager.key_activate) 
{
	ChatterboxContinue(chatterbox);
	chatterbox_update();
}
else if (response_count)
{	
	response_select = scr_range(response_select + _input_manager.input_option_change_horizontal, 0, response_count - 1);
	
	if (scr_mouse_hover(x1 + ((x2 - x1) / 3) - 24, y1 + 36, 48, 24))
	{
		response_select = 0;
	}
	
	if (scr_mouse_hover(x1 + 2 * ((x2 - x1) / 3) - 24, y1 + 36, 48, 24))
	{
		response_select = 1;
	}
	
	if _input_manager.key_activate || _input_manager.mouse_left_pressed
	{
		ChatterboxSelect(chatterbox, response_select);
		response_select = 0;
		
		chatterbox_update();
	}
}

if (_input_manager.key_back || _input_manager.mouse_right_pressed)
{
	closing = true;
}

if ChatterboxIsStopped(chatterbox)
{
	closing = true;
}

if (closing)
{
	lerp_progress = scr_range(lerp_progress - 0.05, 0, 1);
	x1 = lerp(NATIVE_GUI_RESOLUTION_WIDTH / 2, x1_destination, lerp_progress);
	x2 = lerp(NATIVE_GUI_RESOLUTION_WIDTH / 2, x2_destination, lerp_progress);
}

if (closing && lerp_progress < 0.1)
{
	instance_destroy();
	with (obj_player)
	{
		state = last_state;
		alarm[0] = 10;
		text_cooldown = true;
	}
}
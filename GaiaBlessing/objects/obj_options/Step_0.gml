options_lerp_progress += (1 - options_lerp_progress) / 50;

x1 = lerp(x1, x1_destination, options_lerp_progress);
x2 = lerp(x2, x2_destination, options_lerp_progress);
y1 = lerp(y1, y1_destination, options_lerp_progress);
y2 = lerp(y2, y2_destination, options_lerp_progress);

var _input_manager = global.instance_manager_input;

if (_input_manager.key_back || _input_manager.mouse_right_pressed)
{
	closing = true;
}

if (closing)
{
	options_lerp_progress = scr_range(options_lerp_progress - 0.05, 0, 1);
	x1 = lerp(options_start_x + options_width * 0.5, x1_destination, options_lerp_progress);
	x2 = lerp(options_start_x + options_width * 0.5, x2_destination, options_lerp_progress);
	y1 = lerp(options_start_y + options_height * 0.5, y1_destination, options_lerp_progress);
	y2 = lerp(options_start_y + options_height * 0.5, y2_destination, options_lerp_progress);
}

if (scr_mouse_hover(NATIVE_GUI_RESOLUTION_WIDTH * 0.5 - 77 - 9, y1 + 95, 172, 22))
{
	if (_input_manager.mouse_left_pressed)
	{
		music_slider_focus = true;
	}
}

if (scr_mouse_hover(NATIVE_GUI_RESOLUTION_WIDTH * 0.5 - 77 - 9, y1 + 185, 172, 22))
{
	if (_input_manager.mouse_left_pressed)
	{
		effects_slider_focus = true;
	}
}

if (music_slider_focus)
{
	global.game_music_volume = (_input_manager.mouse_x_position - (NATIVE_GUI_RESOLUTION_WIDTH * 0.5 - 77)) / 154;
	
	if (global.game_music_volume > 1)
	{
		global.game_music_volume = 1;
	}
	
	if (global.game_music_volume < 0)
	{
		global.game_music_volume = 0;
	}
	
	audio_sound_gain(snd_bgm, global.game_music_volume * 1, 0);
	
	if (_input_manager.mouse_left_released)
	{
		music_slider_focus = false;
	}
}

if (effects_slider_focus)
{
	global.game_effects_volume = (_input_manager.mouse_x_position - (NATIVE_GUI_RESOLUTION_WIDTH * 0.5 - 77)) / 154;
	if (global.game_effects_volume > 1)
	{
		global.game_effects_volume = 1;
	}
	
	if (global.game_effects_volume < 0)
	{
		global.game_effects_volume = 0;
	}
	
	if (_input_manager.mouse_left_released)
	{
		effects_slider_focus = false;
	}
}



if (closing && options_lerp_progress < 0.1)
{
	instance_destroy();
	with (obj_player)
	{
		state = last_state;
		alarm[0] = 10;
		text_cooldown = true;
	}
}
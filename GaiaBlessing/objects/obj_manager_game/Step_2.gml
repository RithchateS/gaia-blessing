global.session_time++;

/// @description Pause the Game
if (keyboard_check_pressed(vk_escape) && !instance_exists(obj_transition) && (obj_manager_ui.visible == true) && !global.game_paused) 
{
	if (!global.game_paused)
	{
		global.game_paused = !global.game_paused;
		global.game_paused_tab = 0;
		with (all)
		{
			game_paused_image_speed = image_speed;
			image_speed = 0;
		}
	}
	else if (global.game_paused_tab == 0)
	{
		global.game_paused = false;
		with (all)
		{
			image_speed = game_paused_image_speed;
		}
	}
	else
	{
		global.game_paused_tab = 0;
	}
	
	if (global.game_paused)
	{
		with (all)
		{
			game_paused_image_speed = image_speed;
			image_speed = 0;
		}
	}
	else
	{
		with (all)
		{
			image_speed = game_paused_image_speed;
		}
	}
}
else if (keyboard_check_pressed(ord("J")) && !instance_exists(obj_transition) && (obj_manager_ui.visible == true))
{
	scr_generate_deck_array();
	if (!global.game_paused)
	{
		global.game_paused = !global.game_paused;
		global.game_paused_tab = 1;
		global.instance_manager_ui.card_selected = 0;
		with (all)
		{
			game_paused_image_speed = image_speed;
			image_speed = 0;
		}
	}
	else if (global.game_paused_tab == 1)
	{
		global.game_paused = false;
		with (all)
		{
			image_speed = game_paused_image_speed;
		}
	}
	else
	{
		global.game_paused_tab = 1;
	}
}
else if (keyboard_check_pressed(vk_escape) && global.game_paused)
{
	global.game_paused = false;
	with (all)
	{
		image_speed = game_paused_image_speed;
	}
}
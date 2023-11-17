global.session_time++;

/// @description Pause the Game
if (keyboard_check_pressed(vk_tab) && !instance_exists(obj_transition) && obj_manager_ui.visible)
{
	/*
	if (!global.game_paused)
	{
		global.game_paused = !global.game_paused;
		with (all)
		{
			game_paused_image_speed = image_speed;
			image_speed = 0;
		}
		with (global.instance_manager_ui)
		{
			show_menu_ui = true;
			previous_menu_level = -1;
			current_menu_level = 0;
		}
	}
	else if (global.game_paused)
	{
		if (global.instance_manager_ui.current_menu_level == 0)
		{
			global.game_paused = !global.game_paused;
			
			with (all)
			{
				image_speed = game_paused_image_speed;
			}
			
			with (global.instance_manager_ui)
			{
				show_menu_ui = false;
			}
		}
	}
	*/
}
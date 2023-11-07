if (room == r_initialize || room == r_title || instance_exists(obj_item_inventory_ui) || instance_exists(obj_sales_ui) || instance_exists(obj_booster_ui) || instance_exists(obj_collection_ui) || instance_exists(obj_inventory_ui))
{
	visible = false;
}
else
{
	visible = true;
}

if (room != r_village)
{
	show_cards = false;
}
else
{
	show_cards = true;
}

time_since_creation++;

var _input_manager = global.instance_manager_input;
var _card_manager = global.instance_manager_card;
var _deck_manager = global.instance_manager_deck;

if (global.game_paused)
{	
	switch (global.game_paused_tab)
	{
		case 0:
			pause_option_selected = scr_wrap(pause_option_selected + _input_manager.input_option_change_vertical, 0, option_count - 1);
	
			if (_input_manager.key_activate)
			{
				switch (pause_option_selected)
				{
					case 0: // Continue
					{
						global.game_paused = false;
						with (all)
						{
							game_paused_image_speed = image_speed;
							image_speed = 0;
						}
					} break;
					case 1: // Save and Quit
					{
						with (obj_manager_game) instance_destroy();
						scr_save_game();
						game_restart();
					} break;
					case 2: // Save and Quit to Desktop
					{
						scr_save_game();
						game_end();
					} break;
				}
			}
			break;
			
		case 1:
			if (_input_manager.input_option_change_horizontal != 0)
			{
				card_selected = scr_range(card_selected + _input_manager.input_option_change_horizontal, 0, 14);
			}
			
			if (_input_manager.input_option_change_vertical != 0)
			{
				card_selected = scr_range(card_selected + (5 * _input_manager.input_option_change_vertical), 0, 14);
			}
			
			card_selected_row = floor(card_selected / 5);
			card_selected_column = card_selected % 5;

			break;
		
		default:
			show_debug_message("Invalid Tab Number");
			break;
	}
	
}
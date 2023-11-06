function scr_load_game(_save_slot)
{
	global.game_save_slot = _save_slot;
	
	var _file = "save" + string(global.game_save_slot) + ".sav";
	if (file_exists(_file))
	{
		// Load the game data
		var _json = scr_load_json_from_file(_file);
		show_debug_message(_json[? "deck_physical"]);
		
		// Global Variable
		global.player_energy_current = _json[? "player_energy_current"];
		global.player_energy_max = _json[? "player_energy_max"];
		global.target_x = _json[? "target_x"];
		global.target_y = _json[? "target_y"];
		global.game_day = _json[? "game_day"];
		global.player_coin = _json[? "player_coin"];
		
		// List to Arrays
		for (var _i = 1; _i <= 12; _i++)
		{
			for (var _j = 0; _j <= 7; _j++)
			{
				global.instance_manager_farm.farm_slot[_i][_j] = _json[? "farm_status"][| _i][| _j];
			}
		}
		
		for (var _i = 1; _i <= 100; _i++)
		{
			for (var _j = 0; _j <= 2; _j++)
			{
				global.instance_manager_inventory.card_inventory[_i][_j] = _json[? "card_inventory"][| _i][| _j];
			}
		}
		
		for (var _i = 101; _i <= 500; _i++)
		{
			for (var _j = 0; _j <= 2; _j++)
			{
				global.instance_manager_inventory.item_inventory[_i][_j] = _json[? "item_inventory"][| _i][| _j];
			}
		}
		
		// Room
		scr_room_transition(TRANSITION_TYPE.SLIDE, _json[? "room"]);
		
		ds_map_destroy(_json);
		return true;
	}
	else
	{
		show_debug_message("No save in this slot");
		return false;
	}
}

function scr_load_json_from_file(_file_name)
{
	var _buffer = buffer_load(_file_name);
	var _string = buffer_read(_buffer, buffer_string);
	buffer_delete(_buffer);
	var _json = json_decode(_string);
	return _json;
}
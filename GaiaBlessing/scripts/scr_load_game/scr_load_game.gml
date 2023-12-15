function scr_load_game(_save_slot)
{
	global.game_save_slot = _save_slot;
	
	var _file = "save" + string(global.game_save_slot) + ".sav";
	if (file_exists(_file))
	{
		// Load the game data
		var _json = scr_load_json_from_file(_file);
		
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
		
		global.instance_manager_ui.quest1_objective = _json[? "quest1_objective"];
		global.instance_manager_ui.quest2_objective = _json[? "quest2_objective"];
		global.instance_manager_ui.quest3_objective = _json[? "quest3_objective"];
		global.instance_manager_ui.quest4_objective = _json[? "quest4_objective"];
		global.instance_manager_ui.quest5_objective = _json[? "quest5_objective"];
		
		for (var _i = 0; _i < 5; _i++)
		{
			
			global.instance_manager_ui.quest_id[_i] = _json[? "quest_id"][| _i];
			global.instance_manager_ui.quest_status[_i] = _json[? "quest_status"][| _i];
		}
		
		for (var _i = 0; _i < 5; _i++)
		{
			for (var _j = 0; _j < 2; _j++)
			{
				global.instance_manager_ui.quest_sprite[_i][_j] = _json[? "quest_sprite"][| _i][| _j];
			}
		}
		
		
		// Room
		scr_room_transition(TRANSITION_TYPE.FADE, _json[? "room"]);
		
		ds_map_destroy(_json);
		
		scr_generate_deck_array();
		return true;
	}
	else
	{
		show_debug_message("No save in this slot");
		return false;
	}
}

function scr_load_settings(_settings_file)
{
	var _file = "settings.sav";
	if (file_exists(_file))
	{
		// Load the game data
		var _json = scr_load_json_from_file(_file);
		
		// Global Variable
		global.game_music_volume = _json[? "music_volumn"];
		global.game_effects_volume = _json[? "effects_volumn"];
		
		ds_map_destroy(_json);
		
		return true;
	}
	else
	{
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
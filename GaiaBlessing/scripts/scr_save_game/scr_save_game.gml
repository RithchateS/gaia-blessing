function scr_save_game()
{
	// Create Save Map
	var _map = ds_map_create();
	
	_map[? "room"] = room;
	_map[? "player_energy_current"] = global.player_energy_current;
	_map[? "player_energy_max"] = global.player_energy_max;
	_map[? "target_x"] = global.target_x;
	_map[? "target_y"] = global.target_y;
	_map[? "game_day"] = global.game_day;
	_map[? "player_coin"] = global.player_coin;
	_map[? "card_inventory"] = global.instance_manager_inventory.card_inventory;
	_map[? "item_inventory"] = global.instance_manager_inventory.item_inventory;
	_map[? "farm_status"] = global.instance_manager_farm.farm_slot;
	_map[? "quest1_objective"] = global.instance_manager_ui.quest1_objective;
	_map[? "quest2_objective"] = global.instance_manager_ui.quest2_objective;
	_map[? "quest3_objective"] = global.instance_manager_ui.quest3_objective;
	_map[? "quest4_objective"] = global.instance_manager_ui.quest4_objective;
	_map[? "quest5_objective"] = global.instance_manager_ui.quest5_objective;
	_map[? "quest_sprite"] = global.instance_manager_ui.quest_sprite;
	_map[? "quest_id"] = global.instance_manager_ui.quest_id;
	_map[? "quest_status"] = global.instance_manager_ui.quest_status;
	
	
	// Save to a string
	var _string = json_encode(_map);
	scr_save_string_to_file("save" + string(global.game_save_slot) + ".sav", _string);
	show_debug_message(_string);
	
	// Nuke the data
	ds_map_destroy(_map);
	show_debug_message("Game Saved!");
}

function scr_save_settings()
{
	// Create Save Map
	var _map = ds_map_create();
	
	_map[? "music_volumn"] = global.game_music_volume;
	_map[? "effects_volumn"] = global.game_effects_volume;
	
	// Save to a string
	var _string = json_encode(_map);
	scr_save_string_to_file("settings.sav", _string);
	
	// Nuke the data
	ds_map_destroy(_map);
	show_debug_message("Setting Saved!");
}

function scr_save_string_to_file(_file_name, _string)
{
	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, _file_name);
	buffer_delete(_buffer);
}

function scr_delete_save()
{
	var _input_manager = global.instance_manager_input;
	
	file_delete("save" + string(floor((_input_manager.mouse_y_position - 248) / 34)) + ".sav");
	
	return true;
}
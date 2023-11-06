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
	
	// Save to a string
	var _string = json_encode(_map);
	scr_save_string_to_file("save" + string(global.game_save_slot) + ".sav", _string);
	show_debug_message(_string);
	
	// Nuke the data
	ds_map_destroy(_map);
	show_debug_message("Game Saved!");
}

function scr_save_string_to_file(_file_name, _string)
{
	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, _file_name);
	buffer_delete(_buffer);
}
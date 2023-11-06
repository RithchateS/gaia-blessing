title_alpha = 0;
name_alpha = 1;

time_since_game_start = 0;

key_pressed = false;
save_slot_visible = 0;
save_slot_selected = 0;
loading_started = false;

save_slot_y_start = 32;
save_slot_y_gap = 96;
save_slot_width = 280;
save_slot_height = 64;

save_slot_text_x_offset = 48;
save_slot_text_y_offset = 18;

for (var _slot = 0; _slot <= 2; _slot++)
{
	var _file_name = "save" + string(_slot) + ".sav";
	if (file_exists(_file_name))
	{
		slot_data[_slot] = scr_load_json_from_file(_file_name);
	}
	else
	{
		slot_data[_slot] = -1;
	}
}
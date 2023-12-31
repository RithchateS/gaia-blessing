function scr_advance_day(){
	var _player = obj_player;
	
	global.game_day++;
	global.player_energy_current = global.player_energy_max;
	global.left_house = false;
	
	with (_player)
	{
		for (var _i = 0; _i < buffs_in_play; _i++)
		{
			applied_buff[_i] = -1;
		}
		buffs_in_play = 0;
	}
	
	with (global.instance_manager_farm)
	{
		
		for (var _i = 1; _i < 12; _i++)
		{
			if (farm_slot[_i][0] > 0)
			{
				farm_slot[_i][1] += 10;
				if (farm_slot[_i][1] > farm_slot[_i][2])
				{
					farm_slot[_i][1] = farm_slot[_i][2];
				}
				farm_slot[_i][5] = farm_slot[_i][6];
			}
		}
	}
	
	scr_room_transition(TRANSITION_TYPE.FADE, r_house, 0.02);
	global.target_x = 440;
	global.target_y = 88;
	
	scr_save_game();
}
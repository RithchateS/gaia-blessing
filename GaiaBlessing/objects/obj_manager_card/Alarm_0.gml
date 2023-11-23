/// @description Activate card

var _activated_card_info = scr_card_activate_info(activated_card_id);

activated_card_name = scr_card_name(_activated_card_info[0]);
activated_card_effect_type = scr_card_effect(_activated_card_info[1]);
activated_card_effect_param = _activated_card_info[2];
activated_card_cost = _activated_card_info[4];
activated_card_target_requirement = _activated_card_info[5];
activated_card_endurance_cost = _activated_card_info[6];

	
if (activated_card_cost <= global.player_energy_current)
{
	if (activated_card_target_requirement)
	{
		if (obj_player.activate != noone)
		{
			scr_card_activate(activated_card_effect_type, activated_card_effect_param, activated_card_endurance_cost);
			scr_active_hand_update();
			
			with (obj_player)
			{
				state = scr_player_state_use;
			}
		}
		else
		{
			scr_new_popup("No farm nearby");
			show_debug_message("Trying to activate card " + activated_card_name + " and failed");
			show_debug_message("No target, nothing happens.");
		}
	}
	else
	{
		scr_card_activate(activated_card_effect_type, activated_card_effect_param);
		scr_active_hand_update();
		
		with (obj_player)
		{
			state = scr_player_state_use;
		}
	}
	
	
}
else
{
	show_debug_message("Trying to activate card " + activated_card_name + " and failed");
	show_debug_message("Not enough energy, nothing happens.");
}
// Return an array with [name, max growth, max nutrient, max endurance]
function scr_crop_info(_id){
	switch (_id)
	{
		case 1:
			return ["Chilli", 20, 20, 50];
		
		case 2:
			return ["Carrot", 120, 60, 80];
			
		case 3:
			return ["Avocado", 50, 50, 120];
			
		case 4:
			return ["Potato", 60, 20, 20];
			
		case 5:
			return ["Melon", 100, 100, 160];
			
		default:
			return "-";
	}
}

function scr_farm_slot_add_crop(_slot, _id) {
	var _farm_manager = global.instance_manager_farm;
	
	if (_farm_manager.farm_slot[_slot][0] == -1)
	{
		_farm_manager.farm_slot[_slot][0] = _id;
		_farm_manager.farm_slot[_slot][1] = 0;
		_farm_manager.farm_slot[_slot][2] = scr_crop_info(_id)[1];
		_farm_manager.farm_slot[_slot][3] = 0;
		_farm_manager.farm_slot[_slot][4] = scr_crop_info(_id)[2];
		_farm_manager.farm_slot[_slot][5] = scr_crop_info(_id)[3];
		_farm_manager.farm_slot[_slot][6] = scr_crop_info(_id)[3];
		_farm_manager.farm_slot[_slot][7] = 0;
		
		scr_active_hand_discard_card(activated_card_slot);
		scr_active_hand_update();
	}
	else
	{
		show_debug_message("Farm slot already occupied.");
	}
}

function scr_farm_slot_reset(_slot) {
	var _farm_manager = global.instance_manager_farm;
	if (_farm_manager.farm_slot[_slot][0] != -1)
	{
		_farm_manager.farm_slot[_slot][0] = -1;
		_farm_manager.farm_slot[_slot][1] = -1;
		_farm_manager.farm_slot[_slot][2] = -1;
		_farm_manager.farm_slot[_slot][3] = -1;
		_farm_manager.farm_slot[_slot][4] = -1;
		_farm_manager.farm_slot[_slot][5] = -1;
		_farm_manager.farm_slot[_slot][6] = -1;
		_farm_manager.farm_slot[_slot][7] = -1;
	}
	else
	{
		show_debug_message("Farm slot already empty.");
	}
}

function scr_farm_slot_add_growth(_slot, _value, _endurance_cost) {
	var _farm_manager = global.instance_manager_farm;
	var _deck_manager = global.instance_manager_deck;
	
	if (_farm_manager.farm_slot[_slot, 5] >= _endurance_cost)
	{
		// Increase Growth
		var _temp = _farm_manager.farm_slot[_slot, 1] + _value;
		if (_temp > _farm_manager.farm_slot[_slot, 2])
		{
			_temp = _farm_manager.farm_slot[_slot, 2];
		}
		_farm_manager.farm_slot[_slot, 1] = _temp;
		
		// Decrease Endurance
		_farm_manager.farm_slot[_slot, 5] -= _endurance_cost;
		
		global.player_energy_current -= activated_card_cost;
		
		scr_active_hand_discard_card(activated_card_slot);
		scr_active_hand_update();
					
		return true;
	}
	else
	{
		show_debug_message("Not enough endurance to activate cards" );
		return false;
	}
}

function scr_farm_slot_add_nutrient(_slot, _value, _endurance_cost) {
	var _farm_manager = global.instance_manager_farm;
	if (_farm_manager.farm_slot[_slot, 5] >= _endurance_cost)
	{
		if (_farm_manager.farm_slot[_slot, 1] < _farm_manager.farm_slot[_slot, 2])
		{
			_farm_manager.farm_slot[_slot, 3] += _value;
			if (_farm_manager.farm_slot[_slot, 3] >= _farm_manager.farm_slot[_slot, 4])
			{
				_farm_manager.farm_slot[_slot, 3] -= _farm_manager.farm_slot[_slot, 4];
				_farm_manager.farm_slot[_slot, 4] *= 2;
				_farm_manager.farm_slot[_slot, 7] += 1;
			}
			_farm_manager.farm_slot[_slot, 5] -= _endurance_cost
			
			scr_active_hand_discard_card(activated_card_slot);
			scr_active_hand_update();
		
			return true;
		}
		else
		{
			show_debug_message("Plant is already fully grown" );
			return false;
		}
	}
	else
	{
		show_debug_message("Not enough endurance to activate cards" );
		return false;
	}
}

function scr_farm_slot_add_endurance(_slot, _value) {
	var _farm_manager = global.instance_manager_farm;
	
	if (_farm_manager.farm_slot[_slot, 0] > 0)
	{
		_farm_manager.farm_slot[_slot, 5] += _value;
		if (_farm_manager.farm_slot[_slot, 5] >= _farm_manager.farm_slot[_slot, 6])
		{
			_farm_manager.farm_slot[_slot, 5] = _farm_manager.farm_slot[_slot, 6];
		}
	
		scr_active_hand_discard_card(activated_card_slot);
		scr_active_hand_update();
	
		return true;
	}
	else
	{
		show_debug_message("There is no crop in this slot");
		
		return false;
	}
}

function scr_farm_slot_harvest(_slot) {
	var _farm_manager = global.instance_manager_farm;
	
	if (_farm_manager.farm_slot[_slot, 0] > 0)
	{
		if (_farm_manager.farm_slot[_slot, 1] >= _farm_manager.farm_slot[_slot, 2])
		{
			scr_item_inventory_add(100 + _farm_manager.farm_slot[_slot, 0], _farm_manager.farm_slot[_slot, 7] + 1, 1);
			scr_farm_slot_reset(_slot);
		
			if (instance_exists(obj_crop_info))
			{
				instance_destroy(obj_crop_info);
			}
			
			_farm_manager.farm_slot[_slot, 0] = -1;
			
			scr_active_hand_discard_card(activated_card_slot);
			scr_active_hand_update();
		
			return true;
		}
		else
		{
			show_debug_message("Farm slot not ready for harvest yet, please increase the growth.");
		
			return false;
		}
	}
	else
	{
		show_debug_message("Farm has no crop.");
		
		return false;
	}
		
}


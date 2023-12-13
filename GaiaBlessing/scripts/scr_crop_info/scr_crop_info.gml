// Return an array with [name, max growth, max nutrient, max endurance]
function scr_crop_info(_id){
	switch (_id)
	{
		case 1:
			return ["Chilli", 40, 40, 40];
		
		case 2:
			return ["Carrot", 30, 60, 40];
			
		case 3:
			return ["Avocado", 40, 60, 60];
			
		case 4:
			return ["Potato", 30, 30, 30];
			
		case 5:
			return ["Melon", 50, 120, 60];
			
		case 6:
			return ["Tomato", 30, 60, 40];
			
		case 7:
			return ["Sugar Cane", 35, 45, 20];
			
		case 8:
			return ["Rice", 40, 50, 40];
			
		case 9:
			return ["Orange", 45, 60, 50];
		
		case 10:
			return ["Lemon", 25, 30, 30];
			
		case 11:
			return ["Cherry", 20, 40, 30];
			
		case 12:
			return ["Beetroot", 50, 45, 20];
			
		case 13:
			return ["Apple", 60, 80, 50];
			
		case 14:
			return ["Pineapple", 35, 70, 40];
			
		case 15:
			return ["Star", 30, 50, 30];
			
		case 16:
			return ["Key", 40, 100, 50];
			
		case 17:
			return ["Blood", 20, 50, 40];
			
		case 18:
			return ["Honey", 20, 30, 20];
			
		case 19:
			return ["Jewel", 60, 120, 40];
			
		case 20:
			return ["Money", 30, 80, 30];
			
		default:
			return ["Empty Slot", 0, 0, 0];
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
		scr_new_popup("Farm already has a crop.");
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
		scr_new_popup("Not enough endurance");
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
			
			if (_farm_manager.farm_slot[_slot, 7] == 3)
			{
				_farm_manager.farm_slot[_slot, 4] = 999;
			}
			
			scr_active_hand_discard_card(activated_card_slot);
			scr_active_hand_update();
		
			return true;
		}
		else
		{
			scr_new_popup("Plant is already fully grown");
			return false;
		}
	}
	else
	{
		scr_new_popup("Not enough endurance");
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
		scr_new_popup("There is no plant here");
		return false;
	}
}

function scr_farm_slot_harvest(_slot) {
	var _farm_manager = global.instance_manager_farm;
	
	if (_farm_manager.farm_slot[_slot, 0] > 0)
	{
		if (_farm_manager.farm_slot[_slot, 1] >= _farm_manager.farm_slot[_slot, 2])
		{
			scr_item_inventory_add(100 + (4 * (_farm_manager.farm_slot[_slot, 0] - 1)) + _farm_manager.farm_slot[_slot, 7] + 1, 1);
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
			scr_new_popup("Farm slot not ready for harvest yet, please increase the growth.");
		
			return false;
		}
	}
	else
	{
		scr_new_popup("There is no plant here");
		
		return false;
	}
		
}


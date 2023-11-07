// I need to come up with a format to work with card id

// Return weather a card has extra tooltip or not.
function scr_card_info(_id){
	switch (_id)
	{
		case 5:
			return [1];
			
		case 6:
			return [2];
			
		case 9:
			return [3];
			
		case 12:
			return [4];
		
		default:
			return [0];
	}
}

function scr_tooltip_info(_id){
	switch (_id)
	{
		case 1:
			return [0, "Enhance all Growth increase by 5."];
			
		case 2:
			return [1, "Enhance all Nutrients increase by 5."];
			
		case 3:
			return [2, "Enhance effects of Cultivate and Purify."];
			
		case 4:
			return [3, "Reduce endurace cost of next card played by half."];
			
		default:
			return [-1, "Invalid tooltip index"];
	}
}
	
function scr_card_value(_id){
	switch (_id)
	{
		case 111:
			return 10;
			
		case 112:
			return 22;
			
		case 113:
			return 35;
			
		case 114:
			return 50;
			
		case 115:
			return 70;
		
		default:
			return 0;
	}
}

// Return an array with [name id, effect id, effect param, discard method, energy cost, target requirement, target endurance cost]
function scr_card_activate_info(_id){
	switch (_id)
	{
		case 1:
			return [1, 1, 10, 1, 0, true, 10];
		
		case 2:
			return [2, 2, 10, 1, 0, true, 10];
			
		case 3:
			return [3, 3, 30, 1, 0, true, 0];
			
		case 4:
			return [4, 4, 0, 1, 0, true, 0];
			
		case 5:
			return [5, 5, "Green Thumb", 1, 0, false, 0];
			
		case 6:
			return [6, 5, "Caring", 1, 0, false, 0];
			
		case 7:
			return [7, 6, 2, 1, 0, false, 0];
			
		case 8:
			return [8, 7, 2, 1, 0, false, 0];
			
		case 9:
			return [9, 8, [5, "Prep Done"], 1, 0, true, 10];
			
		case 10:
			return [10, 9, [5, 20, "Prep Done"], 1, 0, true, 10];
			
		case 11:
			return [11, 10, [5, 20, "Prep Done"], 1, 0, true, 10];
			
		case 12:
			return [12, 5, "Safety", 1, 0, false, 0];
			
		case 13:
			return [13, 1, 25, 1, 0, true, 20];
			
		case 14:
			return [14, 2, 25, 1, 0, true, 20];
			
		case 15:
			return [15, 11, [5, "Prep Done", "Full Prep"], 1, 0, true, 10];
			
		case 16:
			return [16, 9, [5, 30, "Full Prep"], 1, 0, true, 10];
			
		case 17:
			return [17, 10, [5, 30, "Full Prep"], 1, 0, true, 10];
			
		
		
		case 61:
			return [61, 12, 1, 1, 0, true, 0];
		
		case 62:
			return [62, 12, 2, 1, 0, true, 0];
		
		case 63:
			return [63, 12, 3, 1, 0, true, 0];
			
		case 64:
			return [64, 12, 4, 1, 0, true, 0];
			
		case 65:
			return [65, 12, 5, 1, 0, true, 0];
		
			
		case 101: 
			return [101, -1, -1, -1, 0, false, -1];
			
		case 102: 
			return [102, -1, -1, -1, 0, false, -1];
			
		case 103: 
			return [103, -1, -1, -1, 0, false, -1];
			
		case 104: 
			return [104, -1, -1, -1, 0, false, -1];
	
		case 105: 
			return [105, -1, -1, -1, 0, false, -1];
			
		default:
			return "Unable to retrieve card information";
	}
}

function scr_card_name(_id){
	switch (_id)
	{
		case 1:
			return "Hastener";
		
		case 2:
			return "Fertilizer";
			
		case 3:
			return "Toughener";
			
		case 4:
			return "Harvest";
			
		case 5:
			return "Green Thumb";
		
		case 6:
			return "Caring";
		
		case 7:
			return "Change";
		
		case 8:
			return "Battery";
			
		case 9:
			return "Prep Work";
			
		case 10:
			return "Cultivate";
			
		case 11:
			return "Purify";
		
		case 12:
			return "Safety";
			
		case 13:
			return "Hastener+";
		
		case 14:
			return "Fertilizer+";
			
		case 15:
			return "More Prep";
			
		case 16:
			return "Surge";
			
		case 17:
			return "Compost";
			
		case 61:
			return "Chi. Seed";
			
		case 62:
			return "Car. Seed";
			
		case 63:
			return "Avo. Seed";
			
		case 64:
			return "Pot. Seed";
			
		case 65:
			return "Mel. Seed";
		
		case 101: 
			return "Chilli";
			
		case 102: 
			return "Carrot";
			
		case 103: 
			return "Avocado";
			
		case 104: 
			return "Potato";
	
		case 105: 
			return "Melon";
			
		default:
			return "Invalid card name id";
	}
}

function scr_card_effect(_id){
	switch (_id)
	{
		case 1:
			return "Increase Growth";
		
		case 2:
			return "Increase Nutrients";
			
		case 3:
			return "Increase Endurance";
			
		case 4:
			return "Harvest";
			
		case 5:
			return "Apply Buff";
			
		case 6:
			return "Card Discard";
			
		case 7:
			return "Increase Energy";
			
		case 8:
			return "Increase Growth and Apply Buff";
			
		case 9:
			return "Increase Growth with Condition";
			
		case 10:
			return "Increase Nutrients with Condition";
			
		case 11:
			return "Increase Growth and Transform Buff";
			
		case 12:
			return "Plant";
			
		default:
			return "Invalid card effect id";
	}
}

// And also id system for card effects

function scr_card_activate(_type, _param, _endurance = 0){
	var _farm_manager = global.instance_manager_farm;
	
	show_debug_message("Card Activated Type: " + string(_type) + ", Param: " + string(_param));
	
	switch (_type)
	{
		case "Increase Growth":
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				_param = scr_apply_buff(_param, 1);
				_endurance = scr_apply_buff(_endurance, 3);
				scr_farm_slot_add_growth(obj_player.activate.entity_activate_argument[0], _param, _endurance)
			}
			else
			{
				show_debug_message("Not the correct entity activate, nothing happens");
			}
			break;
			
		case "Increase Nutrients":
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				_param = scr_apply_buff(_param, 2);
				_endurance = scr_apply_buff(_endurance, 3);
				scr_farm_slot_add_nutrient(obj_player.activate.entity_activate_argument[0], _param, _endurance);
			}
			else
			{
				show_debug_message("Not the correct entity activate, nothing happens");
			}
			break;
			
		case "Increase Endurance":
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				scr_farm_slot_add_endurance(obj_player.activate.entity_activate_argument[0], _param);
			}
			else
			{
				show_debug_message("Not the correct entity activate, nothing happens");
			}
			break;
			
		case "Harvest":
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				scr_farm_slot_harvest(obj_player.activate.entity_activate_argument[0]);
			}
			else
			{
				show_debug_message("Not the correct entity activate, nothing happens");
			}
			break;
			
		case "Apply Buff":
			var _buff_already_applied = false;
			for (var _i = 0; _i < obj_player.buffs_in_play; _i++)
			{
				if (obj_player.applied_buff[_i] == _param)
				{
					_buff_already_applied = true;
				}
			}
			if (!_buff_already_applied)
			{
				obj_player.applied_buff[obj_player.buffs_in_play] = _param
				obj_player.buffs_in_play++;
			}
			scr_active_hand_discard_card(activated_card_slot);
			scr_active_hand_update();
			
			return true;
			
		case "Card Discard":
			break;
			
		case "Increase Energy":
			global.player_energy_current += _param;
			break;
			
		case "Increase Growth and Apply Buff":
			var _buff_already_applied = false;
			for (var _i = 0; _i < obj_player.buffs_in_play; _i++)
			{
				if (obj_player.applied_buff[_i] == _param[1])
				{
					_buff_already_applied = true;
				}
			}
			
			if (!_buff_already_applied)
			{
				obj_player.applied_buff[obj_player.buffs_in_play] = _param[1]
				obj_player.buffs_in_play++;
			}
		
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				_param[0] = scr_apply_buff(_param[0], 1);
				_endurance = scr_apply_buff(_endurance, 3);
				scr_farm_slot_add_growth(obj_player.activate.entity_activate_argument[0], _param[0], _endurance);
			}
			else
			{
				show_debug_message("Not the correct entity activate, nothing happens");
			}
			break;
			
		case "Increase Growth with Condition":
			var _buff_found = false;
			for (var _i = 0; _i < obj_player.buffs_in_play; _i++)
			{
				if (obj_player.applied_buff[_i] == _param[2])
				{
					_buff_found = true;
					obj_player.applied_buff[_i] = -1;
					for (var _j = _i; _j < obj_player.buffs_in_play - 1; _j++)
					{
						obj_player.applied_buff[_j] = obj_player.applied_buff[_j + 1];
					}
					obj_player.applied_buff[obj_player.buffs_in_play - 1] = -1;
					obj_player.buffs_in_play--;
				}
			}
			
			if (_buff_found)
			{
				scr_card_activate("Increase Growth", _param[1], _endurance);
			}
			else
			{
				scr_card_activate("Increase Growth", _param[0], _endurance);
			}
			break;
			
		case "Increase Nutrients with Condition":
			var _buff_found = false;
			for (var _i = 0; _i < obj_player.buffs_in_play; _i++)
			{
				if (obj_player.applied_buff[_i] == _param[2])
				{
					_buff_found = true;
					obj_player.applied_buff[_i] = -1;
					for (var _j = _i; _j < obj_player.buffs_in_play - 1; _j++)
					{
						obj_player.applied_buff[_j] = obj_player.applied_buff[_j + 1];
					}
					obj_player.applied_buff[obj_player.buffs_in_play - 1] = -1;
					obj_player.buffs_in_play--;
				}
			}
			
			if (_buff_found)
			{
				scr_card_activate("Increase Nutrients", _param[1], _endurance);
			}
			else
			{
				scr_card_activate("Increase Nutrients", _param[0], _endurance);
			}
			break;
			
		case "Plant":
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				scr_farm_slot_add_crop(obj_player.activate.entity_activate_argument[0], _param);
			}
			else
			{
				show_debug_message("Not the correct entity activate, nothing happens");
			}
			break;
		
		default:
			return false;
	}
}

function scr_find_buff_index(_name)
{
	switch (_name)
	{
		case "Green Thumb":
			return 0;
			
		case "Caring":
			return 1;
			
		case "Prep Done":
			return 2;
			
		case "Safety":
			return 3;
			
		case "Full Prep":
			return 4;
			
		default:
			return "Error";
	}
}

function scr_apply_buff(_param, _type)
{
	var _player = obj_player;
	switch (_type)
	{
		case 1: // Growth
			for (var _i = 0; _i < _player.buffs_in_play; _i++)
			{
				if (_player.applied_buff[_i] == "Green Thumb")
				{
					_param += 5;
				}
			}
			return _param;
		
		case 2: // Nutrients
			for (var _i = 0; _i < _player.buffs_in_play; _i++)
			{
				if (_player.applied_buff[_i] == "Caring")
				{
					_param += 5;
				}
			}
			return _param;
			
		case 3: // Endurance
			for (var _i = 0; _i < _player.buffs_in_play; _i++)
			{
				if (_player.applied_buff[_i] == "Safety")
				{
					_param *= 0.5;
					_player.applied_buff[_i] = -1;
					for (var _j = _i; _j < _player.buffs_in_play - 1; _j++)
					{
						_player.applied_buff[_j] = _player.applied_buff[_j + 1];
					}
					_player.applied_buff[_player.buffs_in_play - 1] = -1;
					_player.buffs_in_play--;
				}
			}
			return _param;
	}
}
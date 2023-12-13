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

// Convert the tooltip into readable text
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

// Flavor text list
function scr_card_flavor_text(_id){
	switch (_id)
	{
		case 1:
			return "Increase a plant's growth by 10.";
		
		case 2:
			return "Increase a plant's nutrients by 10.";
			
		case 3:
			return "Increase a plant's endurance by 10.";
			
		case 4:
			return "Harvest a fully grown plant.";
			
		case 5:
			return "A buff that enhances your next growth increase by 5.";
			
		case 6:
			return "A buff that enhances your next nutrient increase by 5.";
			
		case 7:
			return "Grant a sync start buff to the plant and increase its growth by 5.";
			
		case 8:
			return "Ends the plant's sync and increase its nutrients by 15.";
			
		case 9:
			return "Grants Prep buff to the plant and increases its growth by 5.";
			
		case 10:
			return "Requires Prep buff on the plant, consume it and increase growth by 20.";
			
		case 11:
			return "Requires Prep buff on the plant, consume it and increase nutrient by 20.";
			
		case 12:
			return "Grant Safety buff to your avatar. This makes your next card cost no endurance.";
			
		case 13:
			return "Increase a plant's growth by 15.";
			
		case 14:
			return "Increase a plant's nutrients by 15.";
		
		case 15:
			return "Increase a plant's endurance by 15.";
			
		case 16:
			return "Change Prep buff on plant into Full Prep, also increase growth by 5.";
			
		case 17:
			return "Requires Full Prep buff on the plant,  consume it and increase growth by 40.";
			
		case 18:
			return "Requires Full Prep buff on the plant,  consume it and increase nutrient by 40.";
			
		case 19:
			return "Requires Full Prep buff on the plant,  consume it and increase endurance by 60.";
			
		case 20:
			return "Grant Double buff to your avatar. Doubles the growth/nutrient of your next card.";
			
		case 21:
			return "Summon a fairy help take care of your plant.";
			
		case 22:
			return "Increase growth by 5 for all plants with a fairy.";
			
		case 23:
			return "Increase nutrients by 5 for all plants with a fairy.";
			
		case 24:
			return "Increase endurance by 5 for all plants with a fairy.";
			
		case 25:
			return "Harvest all fully grown plants that have a fairy.";
			
		case 26:
			return "Transform a fairy into a water fairy, making all growth increase more potent.";
			
		case 27:
			return "Transform a fairy into a wind fairy, making all nutrients increase more potent.";
			
		case 28:
			return "Transform a fairy into an earth fairy, making all endurance increase more potent.";
			
		case 29:
			return "Merge a fairy to the plant and gain benefits based on the type of fairy it is.";
			
		case 30:
			return "Transform a fairy into a high fairy, slighly improving all stats gain.";
			
		case 31:
			return "Increase growth by 10 for all plants with a high fairy.";
			
		case 32:
			return "Increase nutrients by 10 for all plants with a high fairy.";
			
		case 33:
			return "Increase endurance by 10 for all plants with a high fairy.";
			
		case 34: 
			return "Dismiss a fairy from a plant.";
			
		case 35:
			return "Increase growth by 8 for all plants with a fairy.";
			
		case 36:
			return "Increase nutrients by 8 for all plants with a fairy.";
			
		case 37:
			return "Increase endurance by 8 for all plants with a fairy.";
			
		case 38:
			return "Merge all active fairies to their plant and gain benefits from the merged fairies.";
			
		case 39:
			return "Transform a high fairy into Titania. Creating a fairy in all adjacent farm plots.";
			
		case 40:
			return "Transform a high fairy into Oberon. Transforming all adjacent fairies into high fairies.";
			
		case 81:
			return "Chilli seeds. A crop with a base stat of 40 Endurance / 40 Growth / 40 Nutrients.";
		
		default:
			return "Description of this item will be included in future builds.";
	}
}
	
// Sales value of crop cards
function scr_card_value(_id){
	var _crop_type = floor((_id - 100) / 4);
	var _crop_rank = (_id - 101) % 4;
	
	switch (_crop_type)
	{
		case 0:
			return scr_rank_price(10, _crop_rank);
				
		case 1:
			return scr_rank_price(15, _crop_rank);
			
		case 2:
			return scr_rank_price(14, _crop_rank);
			
		case 3:
			return scr_rank_price(16, _crop_rank);
			
		case 4:
			return scr_rank_price(18, _crop_rank);
			
		case 5:
			return scr_rank_price(17, _crop_rank);
			
		case 6:
			return scr_rank_price(22, _crop_rank);
			
		case 7:
			return scr_rank_price(11, _crop_rank);
			
		case 8:
			return scr_rank_price(12, _crop_rank);
			
		case 9:
			return scr_rank_price(13, _crop_rank);
		
		case 10:
			return scr_rank_price(20, _crop_rank);
		
		case 11:
			return scr_rank_price(21, _crop_rank);
			
		case 12:
			return scr_rank_price(22, _crop_rank);
			
		case 13:
			return scr_rank_price(23, _crop_rank);
			
		case 14:
			return scr_rank_price(24, _crop_rank);
		
		case 15:
			return scr_rank_price(25, _crop_rank);
			
		case 16:
			return scr_rank_price(26, _crop_rank);
			
		case 17:
			return scr_rank_price(27, _crop_rank);
			
		case 18:
			return scr_rank_price(28, _crop_rank);
			
		case 19:
			return scr_rank_price(30, _crop_rank);
					
		default:
			return 0;
	}
}

function scr_rank_price(_base, _rank) {
	switch (_rank)
	{
		case 0:
			return _base;
			
		case 1:
			if (_base * 2.2 - floor(_base * 2.2) >= 0.5)
			{
				return ceil(_base * 2.2);
			}
			else
			{
				return floor(_base * 2.2);
			}
			
		case 2:
			return ceil(_base * 3.5);
			
		case 3:
			return _base * 5;
	}
}

// Return an array with [name id, effect id, effect param, discard method, energy cost, target requirement, target endurance cost]
function scr_card_activate_info(_id){
	switch (_id)
	{
		#region 1-20
		
		case 1:
			return [1, 1, 10, 1, 0, true, 10];
		
		case 2:
			return [2, 2, 10, 1, 0, true, 10];
			
		case 3:
			return [3, 3, 10, 1, 0, true, 0];
			
		case 4:
			return [4, 4, 0, 1, 0, true, 0];
			
		case 5:
			return [5, 5, "Green Thumb", 1, 0, false, 0];
			
		case 6:
			return [6, 5, "Caring", 1, 0, false, 0];
			
		case 7:
			return [7, 8, [5, "Combo 1"], 1, 0, true, 0];
			
		case 8:
			return [8, 10, [15, "Combo 1"], 1, 0, true, 0];
			
		case 9:
			return [9, 8, [5, "Prep Done"], 1, 0, true, 10];
			
		case 10:
			return [10, 9, [20, "Prep Done"], 1, 0, true, 10];
			
		case 11:
			return [11, 10, [20, "Prep Done"], 1, 0, true, 10];
			
		case 12:
			return [12, 5, "Safety", 1, 0, false, 0];
			
		case 13:
			return [13, 1, 15, 1, 0, true, 10];
			
		case 14:
			return [14, 2, 15, 1, 0, true, 10];
			
		case 15:
			return [15, 3, 15, 1, 0, true, 0];
			
		case 16:
			return [16, 12, [5, "Prep Done", "Full Prep"], 1, 0, true, 10];
			
		case 17:
			return [16, 9, [40, "Full Prep"], 1, 0, true, 10];
			
		case 18:
			return [16, 10, [40, "Full Prep"], 1, 0, true, 10];
			
		case 19:
			return [16, 11, [60, "Full Prep"], 1, 0, true, 10];
		
		case 20:
			return [20, 5, "Double Down", 1, 0, false, 0];
		
		#endregion
		
		#region Fairy Cards
		
		case 21:
			return [21, 6, "Fairy", 1, 0, true, 10];
			
		case 22:
			return [22, 21, 5, 1, 0, true, 10];
		
		case 23:
			return [23, 22, 5, 1, 0, true, 10];
			
		case 24:
			return [24, 23, 5, 1, 0, true, 0];
			
		case 25:
			return [25, 24, 0, 1, 0, true, 10];
			
		case 26:
			return [26, 25, "Water", 1, 0, true, 10];
			
		case 27:
			return [27, 25, "Wind", 1, 0, true, 10];
			
		case 28:
			return [28, 25, "Earth", 1, 0, true, 10];
			
		case 29:
			return [29, 26, 0, 1, 0, true, 10];
			
		case 30:
			return [30, 25, "High", 1, 0, true, 10];
			
		case 31:
			return [31, 27, 10, 1, 0, true, 10];
			
		case 32:
			return [32, 28, 10, 1, 0, true, 10];
			
		case 33:
			return [33, 29, 10, 1, 0, true, 0];
		
		case 34:
			return [34, 30, 0, 1, 0, true, 10];
			
		case 35:
			return [35, 21, 10, 1, 0, true, 10];
		
		case 36:
			return [36, 22, 10, 1, 0, true, 10];
			
		case 37:
			return [37, 23, 10, 1, 0, true, 0];
			
		case 38:
			return [38, 31, 0, 1, 0, true, 10];
			
		case 39:
			return [39, 25, "Titania", 1, 0, true, 10];
			
		case 40:
			return [40, 25, "Oberon", 1, 0, true, 10];
		
		#endregion
		
		#region Seed cards
		case 81:
			return [61, 7, 1, 1, 0, true, 0];
		
		case 82:
			return [62, 7, 2, 1, 0, true, 0];
		
		case 83:
			return [63, 7, 3, 1, 0, true, 0];
			
		case 84:
			return [64, 7, 4, 1, 0, true, 0];
			
		case 85:
			return [65, 7, 5, 1, 0, true, 0];
		#endregion
			
		#region Crop Cards
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
		#endregion	
		
		default:
			return "Unable to retrieve card information";
	}
}

function scr_card_name(_id){
	switch (_id)
	{
		#region 1-20
		
		case 1:
			return "HASTENER";
		
		case 2:
			return "FERTILIZER";
			
		case 3:
			return "TOUGHENER";
			
		case 4:
			return "HARVEST";
			
		case 5:
			return "GREEN THUMB";
		
		case 6:
			return "CARING";
		
		case 7:
			return "GROUNDWORK";
		
		case 8:
			return "RAISE";
			
		case 9:
			return "PREP WORK";
			
		case 10:
			return "CULTIVATE";
			
		case 11:
			return "PURIFY";
		
		case 12:
			return "SAFETY";
			
		case 13:
			return "HASTENER+";
		
		case 14:
			return "FERTILIZER+";
			
		case 15:
			return "TOUGHENER+";
			
		case 16:
			return "MORE PREP";
			
		case 17:
			return "SURGE";
			
		case 18:
			return "COMPOST";
			
		case 19:
			return "RICH SOIL";
			
		case 20:
			return "DOUBLE DOWN";
			
		#endregion
		
		#region 21-40
		
		case 21:
			return "SUMMON FAIRY";
			
		case 22:
			return "REQUEST GROWTH";
			
		case 23:
			return "REQUEST NUTRIENTS";
			
		case 24:
			return "REQUEST ENDURANCE";
			
		case 25:
			return "REQUEST HARVEST";
			
		case 26:
			return "WATER FAIRY";
			
		case 27:
			return "WIND FAIRY";
			
		case 28:
			return "EARTH FAIRY";
			
		case 29:
			return "FAE MERGE";
			
		case 30:
			return "HIGH FAIRY";
			
		case 31:
			return "GROWTH LULLABY";
			
		case 32:
			return "NUTRIENTS BALLAD";
			
		case 33:
			return "ENDURANCE POEM";
			
		case 34:
			return "FAIRY DISMISS";
			
		case 35:
			return "SONG OF GROWTH";
			
		case 36:
			return "SONG OF NUTRIENT";
			
		case 37:
			return "SONG OF ENDURANCE";
			
		case 38:
			return "MASS MERGE";
			
		case 39:
			return "TITANIA";
			
		case 40:
			return "OBERON";
		
		#endregion
			
		#region Seeds
			
		case 81:
			return "CHILLI SEED";
			
		case 82:
			return "CARROT SEED";
			
		case 83:
			return "AVOCADO SEED";
			
		case 84:
			return "POTATO SEED";
			
		case 85:
			return "MELON SEED";
		
		#endregion
		
		#region Produce
		
		case 101: 
			return "(C) CHILLI";
		
		case 102: 
			return "(U) CHILLI";
			
		case 103: 
			return "(R) CHILLI";
			
		case 104: 
			return "(L) CHILLI";
	
		case 105: 
			return "(C) CARROT";
			
		#endregion
		
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
			return "Plant Buff";
		
		case 7:
			return "Plant";
			
		case 8:
			return "Increase Growth and Plant Buff";
			
		case 9:
			return "Increase Growth with Condition";
			
		case 10:
			return "Increase Nutrients with Condition";
			
		case 11:
			return "Increase Endurance with Condition";
			
		case 12:
			return "Increase Growth and Transform Buff";
			
		case 21:
			return "Fairy Increase Growth";
			
		case 22:
			return "Fairy Increase Nutrients";
			
		case 23:
			return "Fairy Increase Endurance";
			
		case 24:
			return "Fairy Harvest";
			
		case 25: 
			return "Fairy Transform";
			
		case 26:
			return "Fairy Sacrifice";
			
		case 27:
			return "High Fairy Increase Growth";
			
		case 28:
			return "High Fairy Increase Nutrients";
			
		case 29:
			return "High Fairy Increase Endurance";
			
		case 30:
			return "Fairy Dismiss";
			
		case 31:
			return "Sacrifice All";
			
			
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
				scr_new_popup("Not a farm");
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
				scr_new_popup("Not a farm");
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
			
		case "Plant Buff":
			var _buff_already_applied = false;
			if (_farm_manager.farm_slot[obj_player.activate.entity_activate_argument[0], 8] == _param)
			{
				_buff_already_applied = true;
			}
			
			if (!_buff_already_applied)
			{
				_farm_manager.farm_slot[obj_player.activate.entity_activate_argument[0], 8] = _param;
			}
			
			_endurance = scr_apply_buff(_endurance, 3);
			_farm_manager.farm_slot[obj_player.activate.entity_activate_argument[0], 5] -= _endurance;
			
			scr_active_hand_discard_card(activated_card_slot);
			scr_active_hand_update();
			
			return true;
			
		case "Increase Growth and Plant Buff":
			var _buff_already_applied = false;
			
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				if (_farm_manager.farm_slot[obj_player.activate.entity_activate_argument[0], 8] == _param[1])
				{
					_buff_already_applied = true;
				}
			
				if (!_buff_already_applied)
				{
					_farm_manager.farm_slot[obj_player.activate.entity_activate_argument[0], 8] = _param[1];
				}
				
				_param[0] = scr_apply_buff(_param[0], 1);
				_endurance = scr_apply_buff(_endurance, 3);
				scr_farm_slot_add_growth(obj_player.activate.entity_activate_argument[0], _param[0], _endurance);
			}
			else
			{
				scr_new_popup("Not a farm");
			}
			break;
			
		case "Increase Growth with Condition":
			var _buff_found = false;
			
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				if (_farm_manager.farm_slot[obj_player.activate.entity_activate_argument[0], 8] == _param[1])
				{
					_buff_found = true;
				}
			
				if (!_buff_found)
				{
					scr_new_popup("Requirement not met");
					break;
					
				}
				else
				{
					_farm_manager.farm_slot[obj_player.activate.entity_activate_argument[0], 8] = -1;
					_param[0] = scr_apply_buff(_param[0], 1);
					_endurance = scr_apply_buff(_endurance, 3);
					scr_farm_slot_add_growth(obj_player.activate.entity_activate_argument[0], _param[0], _endurance);
				}
			}
			else
			{
				scr_new_popup("Not a farm");
			}
			break;
			
		case "Increase Nutrients with Condition":
			var _buff_found = false;
			
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				if (_farm_manager.farm_slot[obj_player.activate.entity_activate_argument[0], 8] == _param[1])
				{
					_buff_found = true;
				}
			
				if (!_buff_found)
				{
					scr_new_popup("Requirement not met");
					break;
					
				}
				else
				{
					_farm_manager.farm_slot[obj_player.activate.entity_activate_argument[0], 8] = -1;
					_param[0] = scr_apply_buff(_param[0], 2);
					_endurance = scr_apply_buff(_endurance, 3);
					scr_farm_slot_add_nutrient(obj_player.activate.entity_activate_argument[0], _param[0], _endurance);
				}
			}
			else
			{
				scr_new_popup("Not a farm");
			}
			break;
			
		case "Increase Endurance with Condition":
			var _buff_found = false;
			
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				if (_farm_manager.farm_slot[obj_player.activate.entity_activate_argument[0], 8] == _param[1])
				{
					_buff_found = true;
				}
			
				if (!_buff_found)
				{
					scr_new_popup("Requirement not met");
					break;
					
				}
				else
				{
					_farm_manager.farm_slot[obj_player.activate.entity_activate_argument[0], 8] = -1;
					scr_farm_slot_add_endurance(obj_player.activate.entity_activate_argument[0], _param[0]);
				}
			}
			else
			{
				scr_new_popup("Not a farm");
			}
			break;
			
		case "Increase Growth and Transform Buff":
			var _buff_found = false;
			
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				if (_farm_manager.farm_slot[obj_player.activate.entity_activate_argument[0], 8] == _param[1])
				{
					_buff_found = true;
				}
			
				if (!_buff_found)
				{
					scr_new_popup("Requirement not met");
					break;
				}
				else
				{
					_farm_manager.farm_slot[obj_player.activate.entity_activate_argument[0], 8] = _param[2];
					_param[0] = scr_apply_buff(_param[0], 1);
					_endurance = scr_apply_buff(_endurance, 3);
					scr_farm_slot_add_growth(obj_player.activate.entity_activate_argument[0], _param[0], _endurance);
				}
			}
			else
			{
				scr_new_popup("Not a farm");
			}
			
			break;
			
		case "Fairy Increase Growth":
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				_param = scr_apply_buff(_param, 1);
				_endurance = scr_apply_buff(_endurance, 3);
				for (var _i = 1; _i <= 12; _i++)
				{
					var _added_value = _param;
					if (_farm_manager.farm_slot[_i, 0] > 0)
					{
						if (scr_fairy_check(_i))
						{
							if (_farm_manager.farm_slot[_i, 5] >= _endurance)
							{
								if (_farm_manager.farm_slot[_i, 8] == "Water")
								{
									_added_value += 5;
								}
								
								if (_farm_manager.farm_slot[_i, 8] == "High")
								{
									_added_value += 3;
								}
								
								// Increase Growth
								var _temp = _farm_manager.farm_slot[_i, 1] + _added_value;
								if (_temp > _farm_manager.farm_slot[_i, 2])
								{
									_temp = _farm_manager.farm_slot[_i, 2];
								}
								_farm_manager.farm_slot[_i, 1] = _temp;
		
								// Decrease Endurance
								_farm_manager.farm_slot[_i, 5] -= _endurance;
							}
						}
					}
				}
				scr_active_hand_discard_card(activated_card_slot);
				scr_active_hand_update();
			}
			else
			{
				scr_new_popup("Not near a farm.");
			}
			break;
			
		case "Fairy Increase Nutrients":
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				_param = scr_apply_buff(_param, 2);
				_endurance = scr_apply_buff(_endurance, 3);
				for (var _i = 1; _i <= 12; _i++)
				{
					var _added_value = _param;
					if (_farm_manager.farm_slot[_i, 0] > 0)
					{
						if (scr_fairy_check(_i))
						{
							if (_farm_manager.farm_slot[_i, 5] >= _endurance)
							{
								if (_farm_manager.farm_slot[_i, 8] == "Wind")
								{
									_added_value += 5;
								}
								
								if (_farm_manager.farm_slot[_i, 8] == "High")
								{
									_added_value += 3;
								}
								
								if (_farm_manager.farm_slot[_i, 1] < _farm_manager.farm_slot[_i, 2])
								{
									_farm_manager.farm_slot[_i, 3] += _added_value;
									if (_farm_manager.farm_slot[_i, 3] >= _farm_manager.farm_slot[_i, 4])
									{
										_farm_manager.farm_slot[_i, 3] -= _farm_manager.farm_slot[_i, 4];
										_farm_manager.farm_slot[_i, 4] *= 2;
										_farm_manager.farm_slot[_i, 7] += 1;
									}
									_farm_manager.farm_slot[_i, 5] -= _endurance
			
									if (_farm_manager.farm_slot[_i, 7] == 3)
									{
										_farm_manager.farm_slot[_i, 4] = 999;
									}
								}
							}
						}
					}
				}
				scr_active_hand_discard_card(activated_card_slot);
				scr_active_hand_update();
			}
			else
			{
				scr_new_popup("Not near a farm.");
			}
			break;
			
		case "Fairy Increase Endurance":
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				for (var _i = 1; _i <= 12; _i++)
				{
					var _added_value = _param;
					if (_farm_manager.farm_slot[_i, 0] > 0)
					{
						if (scr_fairy_check(_i))
						{
							if (_farm_manager.farm_slot[_i, 8] == "Earth")
							{
								_added_value += 5;
							}
								
							if (_farm_manager.farm_slot[_i, 8] == "High")
							{
								_added_value += 3;
							}
							
							_farm_manager.farm_slot[_i, 5] += _added_value;
							
							if (_farm_manager.farm_slot[_i, 5] >= _farm_manager.farm_slot[_i, 6])
							{
								_farm_manager.farm_slot[_i, 5] = _farm_manager.farm_slot[_i, 6];
							}
						}
					}
				}
				scr_active_hand_discard_card(activated_card_slot);
				scr_active_hand_update();
			}
			else
			{
				scr_new_popup("Not near a farm.");
			}
			break;
			
		case "Fairy Harvest":
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				for (var _i = 1; _i <= 12; _i++)
				{
					if (_farm_manager.farm_slot[_i, 0] > 0)
					{
						if (scr_fairy_check(_i))
						{
							if (_farm_manager.farm_slot[_i, 1] >= _farm_manager.farm_slot[_i, 2])
							{
								scr_item_inventory_add(100 + (4 * (_farm_manager.farm_slot[_i, 0] - 1)) + _farm_manager.farm_slot[_i, 7] + 1, 1);
								scr_farm_slot_reset(_slot);
			
								_farm_manager.farm_slot[_i, 0] = -1;
							}
						}
					}
				}
				scr_active_hand_discard_card(activated_card_slot);
				scr_active_hand_update();
			}
			else
			{
				scr_new_popup("Not near a farm.");
			}
			break;
			
		case "Fairy Transform":
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				if (_farm_manager.farm_slot[obj_player.activate.entity_activate_argument[0], 0] > 0)
				{
					if (_param != "Oberon" && _param != "Titania")
					{
						if (_farm_manager.farm_slot[obj_player.activate.entity_activate_argument[0], 8] == "Fairy")
						{
							_farm_manager.farm_slot[obj_player.activate.entity_activate_argument[0], 8] = _param;
							scr_active_hand_discard_card(activated_card_slot);
							scr_active_hand_update();
						}
						else
						{
							scr_new_popup("No base fairy in the farm.");
						}
					}
					else if (_param == "Titania")
					{
						var _slot = obj_player.activate.entity_activate_argument[0];
						if (_farm_manager.farm_slot[_slot, 8] == "High")
						{
							_farm_manager.farm_slot[_slot, 8] = _param;
							if (_slot % 4 > 1)
							{
								if (_farm_manager.farm_slot[_slot - 1, 8] != "Fairy" && _farm_manager.farm_slot[_slot - 1, 0] > 0)
								{
									_farm_manager.farm_slot[_slot - 1, 8] = _param;
								}
							}
							
							if (_slot % 4 < 3)
							{
								if (_farm_manager.farm_slot[_slot + 1, 8] != "Fairy" && _farm_manager.farm_slot[_slot + 1, 0] > 0)
								{
									_farm_manager.farm_slot[_slot + 1, 8] = _param;
								}
							}
							
							if (_slot / 4 > 1)
							{
								if (_farm_manager.farm_slot[_slot - 4, 8] != "Fairy" && _farm_manager.farm_slot[_slot - 4, 0] > 0)
								{
									_farm_manager.farm_slot[_slot - 4, 8] = _param;
								}
							}
							
							if (_slot / 4 <= 2)
							{
								if (_farm_manager.farm_slot[_slot + 4, 8] != "Fairy" && _farm_manager.farm_slot[_slot + 4, 0] > 0)
								{
									_farm_manager.farm_slot[_slot + 4, 8] = _param;
								}
							}
							
							scr_active_hand_discard_card(activated_card_slot);
							scr_active_hand_update();
						}
						else
						{
							scr_new_popup("No high fairy in the farm.");
						}
					}
					else if (_param == "Oberon")
					{
						var _slot = obj_player.activate.entity_activate_argument[0];
						if (_farm_manager.farm_slot[_slot, 8] == "High")
						{
							_farm_manager.farm_slot[_slot, 8] = _param;
							if (_slot % 4 > 1)
							{
								if (_farm_manager.farm_slot[_slot - 1, 8] == "Fairy")
								{
									_farm_manager.farm_slot[_slot - 1, 8] = _param;
								}
							}
							
							if (_slot % 4 < 3)
							{
								if (_farm_manager.farm_slot[_slot + 1, 8] == "Fairy")
								{
									_farm_manager.farm_slot[_slot + 1, 8] = _param;
								}
							}
							
							if (_slot / 4 > 1)
							{
								if (_farm_manager.farm_slot[_slot - 4, 8] == "Fairy")
								{
									_farm_manager.farm_slot[_slot - 4, 8] = _param;
								}
							}
							
							if (_slot / 4 <= 2)
							{
								if (_farm_manager.farm_slot[_slot + 4, 8] == "Fairy")
								{
									_farm_manager.farm_slot[_slot + 4, 8] = _param;
								}
							}
							
							scr_active_hand_discard_card(activated_card_slot);
							scr_active_hand_update();
						}
						else
						{
							scr_new_popup("No high fairy in the farm.");
						}
					}
					
				}
				else
				{
					scr_new_popup("Farm has no plant.");
				}
			}
			else
			{
				scr_new_popup("Not near a farm.");
			}
			break;
			
		case "High Fairy Increase Growth":
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				_param = scr_apply_buff(_param, 1);
				_endurance = scr_apply_buff(_endurance, 3);
				for (var _i = 1; _i <= 12; _i++)
				{
					var _added_value = _param;
					if (_farm_manager.farm_slot[_i, 0] > 0)
					{
						if (_farm_manager.farm_slot[_i, 8] == "High")
						{
							if (_farm_manager.farm_slot[_i, 5] >= _endurance)
							{
								// Increase Growth
								var _temp = _farm_manager.farm_slot[_i, 1] + _param;
								if (_temp > _farm_manager.farm_slot[_i, 2])
								{
									_temp = _farm_manager.farm_slot[_i, 2];
								}
								_farm_manager.farm_slot[_i, 1] = _temp;
		
								// Decrease Endurance
								_farm_manager.farm_slot[_i, 5] -= _endurance;
							}
						}
					}
				}
				scr_active_hand_discard_card(activated_card_slot);
				scr_active_hand_update();
			}
			else
			{
				scr_new_popup("Not near a farm.");
			}
			break;
			
		case "High Fairy Increase Nutrients":
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				_param = scr_apply_buff(_param, 2);
				_endurance = scr_apply_buff(_endurance, 3);
				for (var _i = 1; _i <= 12; _i++)
				{
					var _added_value = _param;
					if (_farm_manager.farm_slot[_i, 0] > 0)
					{
						if (_farm_manager.farm_slot[_i, 8] == "High")
						{
							if (_farm_manager.farm_slot[_i, 5] >= _endurance)
							{
								
								if (_farm_manager.farm_slot[_i, 1] < _farm_manager.farm_slot[_i, 2])
								{
									_farm_manager.farm_slot[_i, 3] += _param;
									if (_farm_manager.farm_slot[_i, 3] >= _farm_manager.farm_slot[_i, 4])
									{
										_farm_manager.farm_slot[_i, 3] -= _farm_manager.farm_slot[_i, 4];
										_farm_manager.farm_slot[_i, 4] *= 2;
										_farm_manager.farm_slot[_i, 7] += 1;
									}
									_farm_manager.farm_slot[_i, 5] -= _endurance
			
									if (_farm_manager.farm_slot[_i, 7] == 3)
									{
										_farm_manager.farm_slot[_i, 4] = 999;
									}
								}
							}
						}
					}
				}
				scr_active_hand_discard_card(activated_card_slot);
				scr_active_hand_update();
			}
			else
			{
				scr_new_popup("Not near a farm.");
			}
			break;
			
		case "High Fairy Increase Endurance":
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				for (var _i = 1; _i <= 12; _i++)
				{
					var _added_value = _param;
					if (_farm_manager.farm_slot[_i, 0] > 0)
					{
						if (_farm_manager.farm_slot[_i, 8] == "High")
						{
							_farm_manager.farm_slot[_i, 5] += _added_value;
							
							if (_farm_manager.farm_slot[_i, 5] >= _farm_manager.farm_slot[_i, 6])
							{
								_farm_manager.farm_slot[_i, 5] = _farm_manager.farm_slot[_i, 6];
							}
						}
					}
				}
				scr_active_hand_discard_card(activated_card_slot);
				scr_active_hand_update();
			}
			else
			{
				scr_new_popup("Not near a farm.");
			}
			break;
		
		case "Fairy Sacrifice":
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				if (_farm_manager.farm_slot[obj_player.activate.entity_activate_argument[0], 0] > 0)
				{
					if (scr_fairy_check(obj_player.activate.entity_activate_argument[0]))
					{
						if (_farm_manager.farm_slot[obj_player.activate.entity_activate_argument[0], 8] == "Fairy")
						{
							scr_farm_slot_add_growth(obj_player.activate.entity_activate_argument[0], 5, 10);
							_farm_manager.farm_slot[obj_player.activate.entity_activate_argument[0], 8] = -1;
						}
						else if (_farm_manager.farm_slot[obj_player.activate.entity_activate_argument[0], 8] == "Water")
						{
							scr_farm_slot_add_growth(obj_player.activate.entity_activate_argument[0], 20, 10);
							_farm_manager.farm_slot[obj_player.activate.entity_activate_argument[0], 8] = -1;
						}
						else if (_farm_manager.farm_slot[obj_player.activate.entity_activate_argument[0], 8] == "Wind")
						{
							scr_farm_slot_add_nutrient(obj_player.activate.entity_activate_argument[0], 20, 10);
							_farm_manager.farm_slot[obj_player.activate.entity_activate_argument[0], 8] = -1;
						}
						else if (_farm_manager.farm_slot[obj_player.activate.entity_activate_argument[0], 8] == "Earth")
						{
							scr_farm_slot_add_endurance(obj_player.activate.entity_activate_argument[0], 20);
							_farm_manager.farm_slot[obj_player.activate.entity_activate_argument[0], 8] = -1;
						}
						else if (_farm_manager.farm_slot[obj_player.activate.entity_activate_argument[0], 8] == "High")
						{
							scr_farm_slot_add_growth(obj_player.activate.entity_activate_argument[0], 20, 10);
							_farm_manager.farm_slot[obj_player.activate.entity_activate_argument[0], 8] = -1;
						}
						else if (_farm_manager.farm_slot[obj_player.activate.entity_activate_argument[0], 8] == "Titania")
						{
							scr_farm_slot_add_nutrient(obj_player.activate.entity_activate_argument[0], 40, 10);
							_farm_manager.farm_slot[obj_player.activate.entity_activate_argument[0], 8] = -1;
						}
						else if (_farm_manager.farm_slot[obj_player.activate.entity_activate_argument[0], 8] == "Oberon")
						{
							scr_farm_slot_add_endurance(obj_player.activate.entity_activate_argument[0], 40);
							_farm_manager.farm_slot[obj_player.activate.entity_activate_argument[0], 8] = -1;
						}
					}
					else
					{
						scr_new_popup("No fairy at this plant.");
					}
				}
				else
				{
					scr_new_popup("Farm has no plant.");
				}
			}
			else
			{
				scr_new_popup("Not near a farm.");
			}
			break;
			
		case "Fairy Dismiss":
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				if (_farm_manager.farm_slot[obj_player.activate.entity_activate_argument[0], 0] > 0)
				{
					if (scr_fairy_check(obj_player.activate.entity_activate_argument[0]))
					{
						_farm_manager.farm_slot[obj_player.activate.entity_activate_argument[0], 8] = -1;
					}
					else
					{
						scr_new_popup("No fairy at this plant.");
					}
				}
				else
				{
					scr_new_popup("Farm has no plant.");
				}
			}
			else
			{
				scr_new_popup("Not near a farm.");
			}
			break;
			
		case "Sacrifice All":
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				for (var _i = 1; _i <= 12; _i++)
				{
					if (_farm_manager.farm_slot[_i, 0] > 0)
					{
						if (scr_fairy_check(_i))
						{
							if (_farm_manager.farm_slot[_i, 8] == "Fairy")
							{
								scr_farm_slot_add_growth(_i, 5, 10);
								_farm_manager.farm_slot[_i, 8] = -1;
							}
							else if (_farm_manager.farm_slot[_i, 8] == "Water")
							{
								scr_farm_slot_add_growth(_i, 20, 10);
								_farm_manager.farm_slot[_i, 8] = -1;
							}
							else if (_farm_manager.farm_slot[_i, 8] == "Wind")
							{
								scr_farm_slot_add_nutrient(_i, 20, 10);
								_farm_manager.farm_slot[_i, 8] = -1;
							}
							else if (_farm_manager.farm_slot[_i, 8] == "Earth")
							{
								scr_farm_slot_add_endurance(_i, 20);
								_farm_manager.farm_slot[_i, 8] = -1;
							}
							else if (_farm_manager.farm_slot[_i, 8] == "High")
							{
								scr_farm_slot_add_growth(_i, 20, 10);
								_farm_manager.farm_slot[_i, 8] = -1;
							}
							else if (_farm_manager.farm_slot[_i, 8] == "Titania")
							{
								scr_farm_slot_add_nutrient(_i, 40, 10);
								_farm_manager.farm_slot[_i, 8] = -1;
							}
							else if (_farm_manager.farm_slot[_i, 8] == "Oberon")
							{
								scr_farm_slot_add_endurance(_i, 40);
								_farm_manager.farm_slot[_i, 8] = -1;
							}
						}
					}
				}
			}
			else
			{
				scr_new_popup("Not near a farm.");
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

function scr_fairy_check(_slot)
{
	var _farm_manager = global.instance_manager_farm;
	if (_farm_manager.farm_slot[_slot, 8] == "Fairy" || _farm_manager.farm_slot[_slot, 8] == "Water" || _farm_manager.farm_slot[_slot, 8] == "Wind" || _farm_manager.farm_slot[_slot, 8] == "Earth" || _farm_manager.farm_slot[_slot, 8] == "High" || _farm_manager.farm_slot[_slot, 8] == "Titania" || _farm_manager.farm_slot[_slot, 8] == "oberon")
	{
		return true;
	}
	else
	{
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
			
		case "Full Prep":
			return 3;
			
		case "Safety":
			return 4;
			
		case "Double Down":
			return 5;
			
		case "Discard Buff":
			return 6;
			
		case "Combo 1":
			return 7;
			
		case "Combo 2":
			return 8;
			
		case "Fairy":
			return 9;
		
		case "Water":
			return 10;
			
		case "Wind":
			return 11;
			
		case "Earth":
			return 12;
			
		case "High":
			return 13;
			
		case "Titania":
			return 14;
			
		case "Oberon":
			return 15;
			
		default:
			return "Error";
	}
}

function scr_apply_buff(_param, _type)
{
	var _player = obj_player;
	var _applied_buff = [];
	switch (_type)
	{
		case 1: // Growth
			for (var _i = 0; _i < _player.buffs_in_play; _i++)
			{
				if (_player.applied_buff[_i] == "Green Thumb")
				{
					_param += 5;
					_applied_buff[array_length(_applied_buff)] = _i;
				}
				
				if (_player.applied_buff[_i] == "Discard Buff")
				{
					_param += 2;
					_applied_buff[array_length(_applied_buff)] = _i;
				}
				
				if (_player.applied_buff[_i] == "Double Down")
				{
					_param *= 2;
					_applied_buff[array_length(_applied_buff)] = _i;
				}
			}
			
			var _buff_to_remove = array_length(_applied_buff);
			
			for (var _i = _buff_to_remove - 1; _i >= 0; _i--)
			{
				array_delete(_player.applied_buff, _applied_buff[_i], 1);
				_player.buffs_in_play--;
			}
			
			return _param;
		
		case 2: // Nutrients
			for (var _i = 0; _i < _player.buffs_in_play; _i++)
			{
				if (_player.applied_buff[_i] == "Caring")
				{
					_param += 5;
					_applied_buff[array_length(_applied_buff)] = _i;
				}
				
				if (_player.applied_buff[_i] == "Discard Buff")
				{
					_param += 2;
					_applied_buff[array_length(_applied_buff)] = _i;
				}
				
				if (_player.applied_buff[_i] == "Double Down")
				{
					_param *= 2;
					_applied_buff[array_length(_applied_buff)] = _i;
				}
			}
			
			var _buff_to_remove = array_length(_applied_buff);
			
			for (var _i = _buff_to_remove - 1; _i >= 0; _i--)
			{
				array_delete(_player.applied_buff, _applied_buff[_i], 1);
				_player.buffs_in_play--;
			}
			
			return _param;
			
		case 3: // Endurance
			for (var _i = 0; _i < _player.buffs_in_play; _i++)
			{
				if (_player.applied_buff[_i] == "Safety")
				{
					_param = 0;
					_applied_buff[array_length(_applied_buff)] = _i;
				}
			}
			
			var _buff_to_remove = array_length(_applied_buff);
			
			for (var _i = _buff_to_remove - 1; _i >= 0; _i--)
			{
				array_delete(_player.applied_buff, _applied_buff[_i], 1);
				_player.buffs_in_play--;
			}
			
			return _param;
	}
}
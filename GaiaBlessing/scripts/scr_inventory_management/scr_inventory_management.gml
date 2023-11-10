#region Card Inventory Manipulation
function scr_inventory_add(_id, _amount){
	with (obj_manager_inventory)
	{
		if (card_inventory[_id][0] == true)
		{
			card_inventory[_id][1] += _amount;
		}
		else
		{
			card_inventory[_id][0] = true;
			card_inventory[_id][1] = _amount;
			
			scr_generate_found_array();
		}
	}
}

function scr_inventory_remove(_id, _amount){
	with (obj_manager_inventory)
	{
		if (card_inventory[_id][0] == true)
		{
			for (var _i = 1; _i <= _amount; _i++)
			{
				if (card_inventory[_id][1] > card_inventory[_id][2])
				{
					card_inventory[_id][1] -= 1;
				}
				if (card_inventory[_id][1] == card_inventory[_id][2])
				{
					card_inventory[_id][1] -= 1;
					card_inventory[_id][2] -= 1;
				}
			}
			if (card_inventory[_id][1] < 0) card_inventory[_id][1] = 0;
			if (card_inventory[_id][2] < 0) card_inventory[_id][2] = 0;
		}
		else
		{
			show_debug_message("Trying to remove a card that hasn't been found yet.")
		}
	}
}

function scr_add_card_from_inventory_to_deck(_id){
	with (obj_manager_inventory)
	{
		if (card_inventory[_id][0] == true)
		{
			if ((card_inventory[_id][1] - card_inventory[_id][2] > 0) && (card_deck_count < CARD_SLOTS))
			{
				card_inventory[_id][2]++;
				scr_generate_deck_array();
			}
			else
			{
				show_debug_message("No additional copy left in inventory or not enough space in deck.");
			}
		}
		else
		{
			show_debug_message("Trying to add a card that hasn't been found yet.");
		}
	}
}

function scr_remove_card_from_deck_to_inventory(_id){
	with (obj_manager_inventory)
	{
		if (card_inventory[_id][0] == true)
		{
			if (card_inventory[_id][2] > 0)
			{
				card_inventory[_id][2]--;
				scr_generate_deck_array();
			}
			else
			{
				show_debug_message("This card doesn't exist in the deck right now.");
			}
			
		}
		else
		{
			show_debug_message("Trying to remove a card that hasn't been found yet.");
		}
	}
}

function scr_generate_found_array(){
	with (obj_manager_inventory)
	{
		card_found = [];
		card_found_count = 0;
		for (var _i = 1; _i <= 100; _i++)
		{	
			if (card_inventory[_i][0])
			{
				card_found[card_found_count] = _i;
				card_found_count++;
			}
		}
	}
}

function scr_generate_deck_array(){
	with (obj_manager_inventory)
	{
		card_deck = [];
		card_deck_count = 0;
		card_type_in_deck = [];
		card_type_in_deck_count = 0;
		
		for (var _i = 1; _i <= 100; _i++)
		{	
			if (card_inventory[_i][2] != 0)
			{
				card_type_in_deck[card_type_in_deck_count] = _i;
				card_type_in_deck_count++;
				for (var _j = 0; _j < card_inventory[_i][2]; _j++)
				{
					card_deck[card_deck_count] = _i;
					card_deck_count++;
				}
			}
		}
		
		for (var _i = card_deck_count; _i < CARD_SLOTS; _i++)
		{
			card_deck[card_deck_count] = 0;
		}
	}
}

function scr_deck_clear(){
	with (obj_manager_inventory)
	{
		for (var _i = 0; _i < card_type_in_deck_count; _i++)
		{
			card_inventory[card_type_in_deck[_i]][2] = 0;
		}
		scr_generate_deck_array();
	}
}

#endregion

#region Item Inventory Manipulation

function scr_item_inventory_add(_id, _rank, _amount){
	with (obj_manager_inventory)
	{
		if (item_inventory[_id][0] == true)
		{
			item_inventory[_id][_rank] += _amount;
		}
		else
		{
			item_inventory[_id][0] = true;
			item_inventory[_id][_rank] = _amount;
			
			scr_generate_item_found_array();
		}
	}
}

function scr_item_inventory_remove(_id, _rank, _amount){
	with (obj_manager_inventory)
	{
		if (item_inventory[_id][0] == true)
		{
			if (item_inventory[_id][_rank] >= _amount)
			{
				item_inventory[_id][_rank] -= _amount;
			}
			else
			{
				show_debug_message("Not enough item in inventory to be removed.")
			}	
		}
		else
		{
			show_debug_message("Trying to remove a card that hasn't been found yet.")
		}
	}
}

function scr_generate_item_found_array(){
	with (obj_manager_inventory)
	{
		item_found = [];
		item_found_count = 0;
		for (var _i = 101; _i <= 500; _i++)
		{	
			if (item_inventory[_i][0])
			{
				item_found[item_found_count] = _i;
				item_found_count++;
			}
		}
	}
}

function scr_sell_item_card(_id, _rank){
	with (obj_manager_inventory)
	{
		global.player_coin += scr_card_value(_id, _rank);
	}
}

#endregion
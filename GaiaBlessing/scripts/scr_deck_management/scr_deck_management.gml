function scr_reset_deck_manager() {
	with (global.instance_manager_deck)
	{
		for (var _i = 1; _i <= CARD_SLOTS; _i++)
		{
			daily_deck[_i][0] = 0;
			daily_deck[_i][1] = 0; // Has it been used?
			daily_deck[_i][2] = 0; // Where is it right now? Draw Pile / Hand / Discard Pile
		}

		for (var _i = 1; _i <= 5; _i++)
		{
			active_hand[_i] = 0; // This contains the index of which card in the daily deck is shown to the player.
		}


		daily_deck_card_count = 0;
		daily_discard_card_count = 0;
	}
}

function scr_daily_deck_add_card(_id){
	with (global.instance_manager_deck)
	{
		daily_deck[daily_deck_card_count + 1][0] = _id;
		daily_deck[daily_deck_card_count + 1][1] = 0;
		daily_deck[daily_deck_card_count + 1][2] = 0;
		daily_deck_card_count++;
		show_debug_message(daily_deck);
	}
}

function scr_active_hand_discard_card(_position){
	with (global.instance_manager_deck)
	{
		daily_deck[active_hand[_position]][1] = 1;
		daily_deck[active_hand[_position]][2] = 2;
		
		active_hand[_position] = 0;
		daily_discard_card_count++;
		
	}
}

function scr_active_hand_update(){
	var _position_empty = -1;
	
	with (global.instance_manager_deck)
	{
		for (var _i = 1; _i <= 5; _i++)
		{
			if (active_hand[_i] <= 0)
			{
				_position_empty = _i;
				break;
			}
		}
		show_debug_message("Position Empty:" + string(_position_empty));
		
		if  (_position_empty != -1)
		{
			if (daily_deck_card_count - daily_discard_card_count >= 5)
			{
				while(active_hand[_position_empty] <= 0)
				{
					var _random_card_position = irandom_range(1, daily_deck_card_count);
					if ((daily_deck[_random_card_position][1] != 1) && (daily_deck[_random_card_position][2] < 1))
					{
						active_hand[_position_empty] = _random_card_position;
						daily_deck[_random_card_position][2] = 1;
					}
				}
			}
			else
			{
				for (var _i = _position_empty; _i < daily_deck_card_count - daily_discard_card_count + 1; _i++)
				{
					active_hand[_i] = active_hand[_i+ 1];
				}
				active_hand[daily_deck_card_count - daily_discard_card_count + 1] = 0;
			}
		}
		show_debug_message(active_hand);
	}
	
}

function scr_generate_first_active_hand(){
	var _inventory_manager = global.instance_manager_inventory;
	
	scr_generate_deck_array();
	
	with (obj_manager_deck)
	{
		for (var _i = 0; _i < _inventory_manager.card_deck_count; _i++) {
		    scr_daily_deck_add_card(_inventory_manager.card_deck[_i]);
		}
		
		daily_deck_card_count = _inventory_manager.card_deck_count;
		daily_discard_card_count = 0;
		
		if (daily_deck_card_count >= 5)
		{
			repeat(5)
			{
				scr_active_hand_update();
			}
		}
		else
		{
			for (var _i = 1; _i <= daily_deck_card_count; _i++)
			{
				active_hand[_i] = _i;
				daily_deck[_i][2] = 1;
			}
		}
	}
}
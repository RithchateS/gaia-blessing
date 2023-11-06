function scr_reset_deck_manager() {
	with (global.instance_manager_deck)
	{
		deck_active = [];
		deck_active_card_count = 0;
		deck_discard = [];
		deck_discard_card_count = 0;
	}
}

function scr_deck_active_add_card(_id){
	deck_active[deck_active_card_count] = _id;
	deck_active_card_count++;
}

function scr_deck_active_discard_card(_slot){
	with (global.instance_manager_deck)
	{
		deck_discard[deck_discard_card_count] = deck_active[_slot];
		deck_discard_card_count++;
		
		deck_active[_slot] = 0;
		deck_active_card_count--;
	}
}

function scr_deck_active_update(){
	var _slot_empty = -1;
	
	with (global.instance_manager_deck)
	{
		for (var _i = 0; _i <= deck_active_card_count; _i++)
		{
			if (deck_active[_i] <= 0)
			{
				_slot_empty = _i;
				break;
			}
		}
		
		if  (_slot_empty != -1)
		{
			for (var _i = _slot_empty; _i < deck_active_card_count - 1; _i++)
			{
				deck_active[_i] = deck_active[_i + 1];
			}
			deck_active[deck_active_card_count] = 0;
		}
	}
}

function scr_deck_active_generate_hand(){
	var _inventory_manager = global.instance_manager_inventory;
	
	scr_generate_found_array();
	
	with (obj_manager_deck)
	{
		for (var _i = 0; _i < CARD_SLOTS; _i++) {
		    deck_active[_i] = 0;
			deck_discard[_i] = 0;
		}
		
		deck_active_card_count = 0;
		deck_discard_card_count = 0;
		
		for (var _i = 0; _i < _inventory_manager.card_in_deck; _i++) {
			scr_deck_active_add_card(_inventory_manager.card_deck_to_draw[_i]);
		}
	}
}

function scr_deck_active_shuffle(){
	with (global.instance_manager_deck)
	{
		deck_active = array_shuffle(deck_active, 0, deck_active_card_count);
		for (var _i = deck_active_card_count; _i < CARD_SLOTS; _i++)
		{
			deck_active[_i] = 0;
		}
	}
}
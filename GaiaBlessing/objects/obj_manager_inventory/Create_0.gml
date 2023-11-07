// Card inventory[id] contains 
// 0. Weather it's unlocked or not
// 1. Total cards in inventory
// 2. Total cards in deck

for (var _i = 1; _i <= 100; _i++)
{
	card_inventory[_i][0] = false;
	card_inventory[_i][1] = 0;
	card_inventory[_i][2] = 0;
}

card_deck = [];
card_deck_count = 0;

card_type_in_deck = [];
card_type_in_deck_count = 0;

card_found = [];
card_found_count = 0;


// Item Inventory contains unusable cards, meant for collections and such

for (var _i = 101; _i <= 500; _i++)
{
	item_inventory[_i][0] = false;
	item_inventory[_i][1] = 0;
	item_inventory[_i][2] = 0;
	item_inventory[_i][3] = 0;
	item_inventory[_i][4] = 0;
}

item_found = [];
item_found_count = 0;
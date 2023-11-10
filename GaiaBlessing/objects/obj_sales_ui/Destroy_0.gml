if (sales_count != 0)
{
	for (var _i = 0; _i < sales_count; _i++)
	{
		scr_item_inventory_add(sales[_i][0], sales[_i][1], 1);
	}
}

with (obj_player)
{
	state = last_state;
	alarm[0] = 10;
	text_cooldown = true;
}
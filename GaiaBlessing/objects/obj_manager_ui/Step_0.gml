// Deck Management

var _input_manager = global.instance_manager_input;
var _card_manager = global.instance_manager_card;
var _deck_manager = global.instance_manager_deck;

card_to_display_amount = 0;

for (var _i = 0; _i < 5; _i++)
{
	if (_deck_manager.deck_active[_i] > 0)
	{
		card_to_display[card_to_display_amount] = asset_get_index("spr_card_" + string(_deck_manager.deck_active[_i]));
		card_to_display_amount++;
	}
}

if (focused_card == -1 && !focused_card_hold)
{
	if (_input_manager.mouse_y_position > NATIVE_GUI_RESOLUTION_HEIGHT + 10 - CARD_HEIGHT)
	{
		if ((_input_manager.mouse_x_position > ((NATIVE_GUI_RESOLUTION_WIDTH * 0.5) - (0.48 * card_to_display_amount * CARD_WIDTH))) && (_input_manager.mouse_x_position < ((NATIVE_GUI_RESOLUTION_WIDTH * 0.5) + (0.48 * card_to_display_amount * CARD_WIDTH))))
		{
			focused_card = _input_manager.mouse_x_position - ((NATIVE_GUI_RESOLUTION_WIDTH - (card_to_display_amount * CARD_WIDTH * 0.96)) / 2);
			focused_card = focused_card / (0.96 * CARD_WIDTH);
			focused_card -= frac(focused_card);
		}
		else
		{
			focused_card = -1;
		}
	}
	else
	{
		focused_card = -1;
	}
}
else if (focused_card != -1 && !focused_card_hold)
{
	if (_input_manager.mouse_y_position > NATIVE_GUI_RESOLUTION_HEIGHT - 15 - CARD_HEIGHT)
	{
		if ((_input_manager.mouse_x_position > ((NATIVE_GUI_RESOLUTION_WIDTH * 0.5) - (0.48 * card_to_display_amount * CARD_WIDTH))) && (_input_manager.mouse_x_position < ((NATIVE_GUI_RESOLUTION_WIDTH * 0.5) + (0.48 * card_to_display_amount * CARD_WIDTH))))
		{
			var _previous_focus = focused_card;
			focused_card = _input_manager.mouse_x_position - ((NATIVE_GUI_RESOLUTION_WIDTH - (card_to_display_amount * CARD_WIDTH * 0.96)) / 2);
			focused_card = focused_card / (0.96 * CARD_WIDTH);
			focused_card -= frac(focused_card);
			if (focused_card != _previous_focus)
			{
				if (_input_manager.mouse_y_position < NATIVE_GUI_RESOLUTION_HEIGHT + 10 - CARD_HEIGHT)
				{
					focused_card = -1;
				}
			}
		}
		else
		{
			focused_card = -1;
		}
	}
	else
	{
		focused_card = -1;
	}
}
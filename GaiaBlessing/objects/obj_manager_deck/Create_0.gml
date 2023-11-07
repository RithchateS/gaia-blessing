/// @description Initialize Deck Manager

for (var _i = 1; _i <= CARD_SLOTS; _i++)
{
	daily_deck[_i][0] = 0;
	daily_deck[_i][1] = 0; // Has it been used?
	daily_deck[_i][2] = 0; // Where is it right now? Hand / Draw Pile / Discard Pile
}

for (var _i = 1; _i <= 5; _i++)
{
	active_hand[_i] = 0; // This contains the index of which card in the daily deck is shown to the player.
}

daily_deck_card_count = 0;
daily_discard_card_count = 0;
/// @description Initialize

// First number represents the slot
for (var _i = 12; _i >= 1; _i--)
{
	// Second number represents attributes
	// 0 - Crop id
	// 1 - Growth
	// 2 - Max Growth
	// 3 - Nutrients
	// 4 - Max Nutrients
	// 5 - Endurance
	// 6 - Max Endurance
	// 7 - Rank
	for (var _j = 6; _j >= 0; _j--)
	{
		farm_slot[_i][_j] = -1;
	}
}
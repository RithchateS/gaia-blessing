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
		#region 1-20
		
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
		
		#endregion
		
		#region 21-40
		
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
		
		#endregion
		
		#region 41-60
		
		case 41:
			return "Increase growth by 10 + 20% per each harmony stack.";
			
		case 42:
			return "Increase nutrients by 10 + 20% per each harmony stack.";
			
		case 43:
			return "Increase endurance by 10 + 20% per each harmony stack.";
			
		case 44:
			return "Reduce a crop's nutrient by 5 and give 2 harmony stack.";
			
		case 45:
			return "Reduce a crop's endurance by 5 and give 2 harmony stack.";
			
		case 46:
			return "Increase a crop's growth by 5 and give 1  harmony stack.";
			
		case 47:
			return "Increase a crop's nutrients by 5 and give 1  harmony stack.";
			
		case 48:
			return "Increase a crop's endurance by 5 and give 1  harmony stack.";
			
		case 49:
			return "Increase growth by 15 +20% per harmony stack. Reduce 2 harmony stack.";
			
		case 50:
			return "Increase nutrients by 15 +20% per harmony stack. Reduce 2 harmony stack.";
			
		case 51:
			return "Increase endurance by 15 +20% per harmony stack. Reduce 2 harmony stack.";
			
		case 52:
			return "Increase growth by 15 + 20% per each harmony stack.";
			
		case 53:
			return "Increase nutrients by 15 + 20% per each harmony stack.";
			
		case 54: 
			return "Increase endurance by 15 + 20% per each harmony stack.";
			
		case 55:
			return "Increase growth by 15 +20% per harmony stack. Reduce 1 harmony stack.";
			
		case 56:
			return "Increase nutrients by 15 +20% per harmony stack. Reduce 1 harmony stack.";
			
		case 57:
			return "Increase endurance by 15 +20% per harmony stack. Reduce 1 harmony stack.";
			
		case 58:
			return "Reduce a crop's nutrients by 10 and give 3 harmony stacks.";
			
		case 59:
			return "Remove all harmony stacks and increase growth by 5 for each stack";
			
		case 60:
			return "Remove all harmony stacks and increase nutrients by 5 for each stack";
		
		#endregion
		
		#region 61-80
		
		case 61:
			return "Increase plant growth by 7 if two same plants are in the same row.";
			
		case 62:
			return "Increase plant nutrients by 7 if two same plants are in the same column.";
			
		case 63:
			return "Increase plant endurance by 7 if two same plants are diagonal of each other.";
			
		case 64:
			return "Increase plant growth by 5 if three same plants are in the same row.";
			
		case 65:
			return "Increase plant nutrients by 5 if three same plants are in the same column.";
			
		case 66:
			return "Increase plant growth by 5 if three same plants are in the field.";
			
		case 67:
			return "Increase plant nutrients by 5 if four same planys are in the field.";
			
		case 68:
			return "Increase plant growth by 15 there is no other plant of the same type.";
			
		case 69:
			return "Increase plant nutrient by 15 there is no other plant of the same type.";
			
		case 70:
			return "Increase plant growth by 10 if 5 or more same plants in the field.";
			
		case 71:
			return "Increase plant nutrient by 10 if 5 or more same plants in the field.";
			
		case 72:
			return "Increase plant growth by 20 there is no other plant of the same type.";
			
		case 73:
			return "Increase plant nutrient by 20 there is no other plant of the same type.";
			
		case 74: 
			return "Increase plant growth by 10 if three same plants are in the same row.";
			
		case 75:
			return "Increase plant nutrients by 10 if three same plants are in the same column.";
			
		case 76:
			return "Increase plant growth by 15 if all plant in the row is the same.";
			
		case 77:
			return "Increase plant nutrients by 15 if all plant in the column is the same.";
			
		case 78:
			return "Increase a random plant growth and nutrient by 15.";
			
		case 79:
			return "If all plants in the field is of the same type, increase nutrient by 10 to all.";
			
		case 80:
			return "If no plant in the field is of the same type, increase nutrient by 10 to all.";
		
		#endregion

		#region 81-100
		case 81:
			return "Chilli seeds. A crop with a base stat of 40 Endurance / 40 Growth / 40 Nutrients.";
			
		case 82:
			return "Carrot seeds. A crop with a base stat of 50 Endurance / 30 Growth / 50 Nutrients.";
			
		case 83:
			return "Avocado seeds. A crop with a base stat of 60 Endurance / 40 Growth / 60 Nutrients.";
			
		case 84:
			return "Potato seeds. A crop with a base stat of 30 Endurance / 30 Growth / 30 Nutrients.";
			
		case 85:
			return "Melon seeds. A crop with a base stat of 60 Endurance / 50 Growth / 80 Nutrients.";
			
		case 86:
			return "Tomato seeds. A crop with a base stat of 40 Endurance / 30 Growth / 60 Nutrients.";
			
		case 87:
			return "Sugar cane seeds. A crop with a base stat of 20 Endurance / 35 Growth / 45 Nutrients.";
			
		case 88:
			return "Rice seeds. A crop with a base stat of 40 Endurance / 40 Growth / 50 Nutrients.";
			
		case 89:
			return "Orange seeds. A crop with a base stat of 50 Endurance / 45 Growth / 60 Nutrients.";
			
		case 90:
			return "Lemon seeds. A crop with a base stat of 30 Endurance / 25 Growth / 30 Nutrients.";
			
		case 91:
			return "Cherry seeds. A crop with a base stat of 30 Endurance / 20 Growth / 40 Nutrients.";
			
		case 92:
			return "Beetroot seeds. A crop with a base stat of 20 Endurance / 50 Growth / 45 Nutrients.";
			
		case 93:
			return "Apple seeds. A crop with a base stat of 50 Endurance / 60 Growth / 80 Nutrients.";
			
		case 94:
			return "Pineapple seeds. A crop with a base stat of 40 Endurance / 35 Growth / 70 Nutrients.";
			
		case 95:
			return "Star seeds. A crop with a base stat of 30 Endurance / 30 Growth / 50 Nutrients.";
			
		case 96:
			return "Key seeds. A crop with a base stat of 50 Endurance / 40 Growth / 100 Nutrients.";
			
		case 97:
			return "Blood seeds. A crop with a base stat of 40 Endurance / 20 Growth / 50 Nutrients.";
			
		case 98:
			return "Honey seeds. A crop with a base stat of 20 Endurance / 20 Growth / 30 Nutrients.";
			
		case 99:
			return "Jewel seeds. A crop with a base stat of 40 Endurance / 60 Growth / 120 Nutrients.";
			
		case 100:
			return "Money seeds. A crop with a base stat of 30 Endurance / 30 Growth / 80 Nutrients.";
		#endregion
		
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
		
		#region Harmony Cards
		
		case 41:
			return [41, 41, 10, 1, 0, true, 10];
			
		case 42:
			return [42, 42, 10, 1, 0, true, 10];
		
		case 43:
			return [43, 43, 10, 1, 0, true, 0];
			
		case 44:
			return [44, 44, [5, 2], 1, 0, true, 0];
			
		case 45:
			return [45, 45, [5, 2], 1, 0, true, 10];
			
		case 46:
			return [46, 46, [5, 1], 1, 0, true, 10];
			
		case 47:
			return [47, 47, [5, 1], 1, 0, true, 10];
			
		case 48:
			return [48, 48, [5, 1], 1, 0, true, 0];
			
		case 49:
			return [49, 49, [15, 2], 1, 0, true, 10];
			
		case 50:
			return [50, 50, [15, 2], 1, 0, true, 10];
		
		case 51:
			return [51, 51, [15, 2], 1, 0, true, 10];
			
		case 52:
			return [52, 41, 16, 1, 0, true, 10];
			
		case 53:
			return [53, 42, 15, 1, 0, true, 10];
		
		case 54:
			return [54, 43, 15, 1, 0, true, 0];
			
		case 55:
			return [55, 49, [15, 1], 1, 0, true, 10];
		
		case 56:
			return [56, 50, [15, 1], 1, 0, true, 10];
			
		case 57:
			return [57, 51, [15, 1], 1, 0, true, 0];
			
		case 58:
			return [58, 44, [10, 3], 1, 0, true, 10];
			
		case 59:
			return [59, 52, 5, 1, 0, true, 10];
			
		case 60:
			return [60, 53, 5, 1, 0, true, 10];
		
		#endregion
		
		#region 61-80 Cards
		
		case 61:
			return [61, 61, [2, 7], 1, 0, true, 10];
			
		case 62:
			return [62, 62, [2, 7], 1, 0, true, 10];
		
		case 63:
			return [63, 63, [2, 7], 1, 0, true, 0];
			
		case 64:
			return [64, 61, [3, 5], 1, 0, true, 10];
			
		case 65:
			return [65, 62, [3, 5], 1, 0, true, 10];
			
		case 66:
			return [66, 64, [3, 5], 1, 0, true, 10];
			
		case 67:
			return [67, 65, [3, 5], 1, 0, true, 10];
			
		case 68:
			return [68, 66, 15, 1, 0, true, 10];
			
		case 69:
			return [69, 67, 15, 1, 0, true, 10];
			
		case 70:
			return [70, 64, [5, 10], 1, 0, true, 10];
		
		case 71:
			return [71, 65, [5, 10], 1, 0, true, 10];
			
		case 72:
			return [72, 66, 20, 1, 0, true, 10];
			
		case 73:
			return [73, 67, 20, 1, 0, true, 10];
		
		case 74:
			return [74, 61, [3, 10], 1, 0, true, 0];
			
		case 75:
			return [75, 62, [3, 10], 1, 0, true, 10];
		
		case 76:
			return [76, 61, [4, 15], 1, 0, true, 10];
			
		case 77:
			return [77, 62, [3, 15], 1, 0, true, 0];
			
		case 78:
			return [78, 68, 15, 1, 0, false, 10];
			
		case 79:
			return [79, 64, [12, 10], 1, 0, true, 10];
			
		case 80:
			return [80, 69, 10, 1, 0, true, 10];
		
		#endregion
		
		#region Seed cards
		case 81:
			return [81, 7, 1, 1, 0, true, 0];
		
		case 82:
			return [82, 7, 2, 1, 0, true, 0];
		
		case 83:
			return [83, 7, 3, 1, 0, true, 0];
			
		case 84:
			return [84, 7, 4, 1, 0, true, 0];
			
		case 85:
			return [85, 7, 5, 1, 0, true, 0];
			
		case 86:
			return [86, 7, 6, 1, 0, true, 0];
			
		case 87:
			return [87, 7, 7, 1, 0, true, 0];
			
		case 88:
			return [88, 7, 8, 1, 0, true, 0];
			
		case 89:
			return [89, 7, 9, 1, 0, true, 0];
			
		case 90:
			return [90, 7, 10, 1, 0, true, 0];
			
		case 91:
			return [91, 7, 11, 1, 0, true, 0];	
		
		case 92:
			return [92, 7, 12, 1, 0, true, 0];	
		
		case 93:
			return [93, 7, 13, 1, 0, true, 0];	
		
		case 94:
			return [94, 7, 14, 1, 0, true, 0];	
		
		case 95:
			return [95, 7, 15, 1, 0, true, 0];	
		
		case 96:
			return [96, 7, 16, 1, 0, true, 0];	
		
		case 97:
			return [97, 7, 17, 1, 0, true, 0];	
		
		case 98:
			return [98, 7, 18, 1, 0, true, 0];	
		
		case 99:
			return [99, 7, 19, 1, 0, true, 0];	
		
		case 100:
			return [100, 7, 20, 1, 0, true, 0];	
		
		#endregion
		
		#region Crop Cards
		/*
		
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
			
		case 106: 
			return [105, -1, -1, -1, 0, false, -1];

		*/
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
			
		#region 41-60
		
		case 41:
			return "GROWTH STACK";
			
		case 42:
			return "NUTRIENTS STACK";
			
		case 43:
			return "ENDURANCE STACK";
			
		case 44:
			return "PLANT SAMPLE";
			
		case 45:
			return "GROUND SAMPLE";
			
		case 46:
			return "CARE";
			
		case 47:
			return "WATER";
			
		case 48:
			return "SUNLIGHT";
			
		case 49:
			return "FORCED GROWTH";
			
		case 50:
			return "QUALITY BOOST";
			
		case 51:
			return "ENCOURAGE";
			
		case 52:
			return "GROW TALL";
			
		case 53:
			return "STAND STRONG";
			
		case 54:
			return "LIVE LONG";
			
		case 55:
			return "QUICK GRO";
			
		case 56:
			return "ENRICH";
			
		case 57:
			return "STEEL SOIL";
			
		case 58:
			return "SACRIFICE";
			
		case 59:
			return "G HARMONIZE";
			
		case 60:
			return "N HARMONIZE";
		
		#endregion	
		
		#region 61-80
		
		case 61:
			return "TWIN GROWTH";
			
		case 62:
			return "TWIN NUTRIENTS";
			
		case 63:
			return "TWIN ENDURANCE";
			
		case 64:
			return "G TRIPLET";
			
		case 65:
			return "N TRIPLET";
			
		case 66:
			return "THREE OF A KIND";
			
		case 67:
			return "FOUR OF A KIND";
			
		case 68:
			return "UNIQUENESS";
			
		case 69:
			return "INDIVIDUALITY";
			
		case 70:
			return "GROUPING";
			
		case 71:
			return "KINSHIP";
			
		case 72:
			return "LONE WOLF";
			
		case 73:
			return "STAND TALL";
			
		case 74:
			return "TRIPLE GROWTH";
			
		case 75:
			return "TRIPLE NUTRIENTS";
			
		case 76:
			return "ROW GROWING";
			
		case 77:
			return "COLUMN ENHANCING";
			
		case 78:
			return "FORTUNE";
			
		case 79:
			return "MASS PRODUCE";
			
		case 80:
			return "SOIL VARIETY";
		
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
			
		case 86:
			return "TOMATO SEED";
		
		case 87:
			return "SUGAR SEED";
		
		case 88:
			return "RICE SEED";
		
		case 89:
			return "ORANGE SEED";
		
		case 90:
			return "LEMON SEED";
		
		case 91:
			return "CHERRY SEED";
		
		case 92:
			return "BEETROOT SEED";
		
		case 93:
			return "APPLE SEED";
		
		case 94:
			return "PINEAPPLE SEED";
		
		case 95:
			return "STAR SEED";
		
		case 96:
			return "KEY SEED";
		
		case 97:
			return "BLOOD SEED";
		
		case 98:
			return "HONEY SEED";
		
		case 99:
			return "JEWEL SEED";
		
		case 100:
			return "MONEY SEED";
		
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
			
		case 106: 
			return "(U) CARROT";
			
		case 107: 
			return "(R) CARROT";
			
		case 108: 
			return "(L) CARROT";
			
		case 109: 
			return "(C) AVOCADO";
			
		case 110: 
			return "(U) AVOCADO";
			
		case 111: 
			return "(R) AVOCADO";
			
		case 112: 
			return "(L) AVOCADO";
			
		case 113: 
			return "(C) POTATO";
			
		case 114: 
			return "(U) POTATO";
			
		case 115: 
			return "(R) POTATO";
			
		case 116: 
			return "(L) POTATO";
		
		case 117: 
			return "(C) MELON";
			
		case 118: 
			return "(U) MELON";
			
		case 119: 
			return "(R) MELON";
			
		case 120: 
			return "(L) MELON";
			
		case 121: 
			return "(C) TOMATO";
		
		case 122: 
			return "(U) TOMATO";
			
		case 123: 
			return "(R) TOMATO";
			
		case 124: 
			return "(L) TOMATO";
			
		case 125: 
			return "(C) SUGAR CANE";
			
		case 126: 
			return "(U) SUGAR CANE";
			
		case 127: 
			return "(R) SUGAR CANE";
			
		case 128: 
			return "(L) SUGAR CANE";
			
		case 129: 
			return "(C) RICE";
			
		case 130: 
			return "(U) RICE";
			
		case 131: 
			return "(R) RICE";
			
		case 132: 
			return "(L) RICE";
			
		case 133: 
			return "(C) ORANGE";
			
		case 134: 
			return "(U) ORANGE";
			
		case 135: 
			return "(R) ORANGE";
			
		case 136: 
			return "(L) ORANGE";
			
		case 137: 
			return "(C) LEMON";
			
		case 138: 
			return "(U) LEMON";
			
		case 139: 
			return "(R) LEMON";
			
		case 140: 
			return "(L) LEMON";
			
		case 141: 
			return "(C) CHERRY";
		
		case 142: 
			return "(U) CHERRY";
			
		case 143: 
			return "(R) CHERRY";
			
		case 144: 
			return "(L) CHERRY";
			
		case 145: 
			return "(C) BEETROOT";
			
		case 146: 
			return "(U) BEETROOT";
			
		case 147: 
			return "(R) BEETROOT";
			
		case 148: 
			return "(L) BEETROOT";
			
		case 149: 
			return "(C) APPLE";
		
		case 150: 
			return "(U) APPLE";
			
		case 151: 
			return "(R) APPLE";
			
		case 152: 
			return "(L) APPLE";
			
		case 153: 
			return "(C) PINEAPPLE";
			
		case 154: 
			return "(U) PINEAPPLE";
			
		case 155: 
			return "(R) PINEAPPLE";
			
		case 156: 
			return "(L) PINEAPPLE";
			
		case 157: 
			return "(C) STAR";
			
		case 158: 
			return "(U) STAR";
			
		case 159: 
			return "(R) STAR";
			
		case 160: 
			return "(L) STAR";
			
		case 161: 
			return "(C) KEY";
			
		case 162: 
			return "(U) KEY";
			
		case 163: 
			return "(R) KEY";
			
		case 164: 
			return "(L) KEY";
			
		case 165: 
			return "(C) BLOOD";
		
		case 166: 
			return "(U) BLOOD";
		
		case 167: 
			return "(R) BLOOD";
			
		case 168: 
			return "(L) BLOOD";
			
		case 169: 
			return "(C) HONEY";
			
		case 170: 
			return "(U) HONEY";
			
		case 171: 
			return "(R) HONEY";
			
		case 172: 
			return "(L) HONEY";
			
		case 173: 
			return "(C) JEWEL";
			
		case 174: 
			return "(U) JEWEL";
			
		case 175: 
			return "(R) JEWEL";
			
		case 176: 
			return "(L) JEWEL";
			
		case 177: 
			return "(C) MONEY";
			
		case 178: 
			return "(U) MONEY";
			
		case 179: 
			return "(R) MONEY";
			
		case 180: 
			return "(L) MONEY";
			
		#endregion
		
		default:
			return "Invalid card name id";
	}
}

function scr_card_effect(_id){
	switch (_id)
	{
		#region Base Effects
		
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
			
		#endregion
		
		#region Fairy Effects
		
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
			
		#endregion
			
		#region Harmony Effects	
		
		case 41:
			return "Harmony Growth Increase";
			
		case 42:
			return "Harmony Nutrients Increase";
			
		case 43:
			return "Harmony Endurance Increase";
			
		case 44:
			return "Harmony Reduce Nutrients";
			
		case 45:
			return "Harmony Reduce Endurance";
			
		case 46:
			return "Harmony Increase Growth";
			
		case 47:
			return "Harmony Increase Nutrients";
			
		case 48:
			return "Harmony Increase Endurance";
			
		case 49:
			return "Harmony Deduction Growth Increase";
			
		case 50:
			return "Harmony Deduction Nutrients Increase";
			
		case 51:
			return "Harmony Deduction Endurance Increase";
			
		case 52:
			return "Harmony Growth Final Increase";
			
		case 53:
			return "Harmony Nutrients Final Increase";
			
		#endregion
			
		#region 61-80 Effects
		
		case 61:
			return "Row Growth Increase";
			
		case 62:
			return "Column Nutrients Increase";
			
		case 63:
			return "Diag Endurance Increase";
			
		case 64:
			return "Field Growth Increase";
			
		case 65:
			return "Field Nutrients Increase";
			
		case 66:
			return "Unique Growth Increase";
			
		case 67:
			return "Unique Nutrients Increase";
			
		case 68:
			return "Random Growth and Nutrients Increase";
			
		case 69:
			return "All Unique Nutrients Increase";
		
		#endregion
			
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
		#region Base Effects
		
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
				audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
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
				audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
			}
			break;
			
		case "Increase Endurance":
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				scr_farm_slot_add_endurance(obj_player.activate.entity_activate_argument[0], _param);
			}
			else
			{
				scr_new_popup("Not a farm");
				audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
			}
			break;
			
		case "Harvest":
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				scr_farm_slot_harvest(obj_player.activate.entity_activate_argument[0]);
			}
			else
			{
				scr_new_popup("Not a farm");
				audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
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
			audio_play_sound(snd_card_success, 800, false, global.game_effects_volume * 1);
			scr_active_hand_update();
			
			return true;
			
		case "Plant Buff":
			var _buff_already_applied = false;
			if (_farm_manager.farm_slot[obj_player.activate.entity_activate_argument[0], 5] >= _endurance)
			{
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
				audio_play_sound(snd_card_success, 800, false, global.game_effects_volume * 1);
				scr_active_hand_update();
			
				return true;
			}
			else
			{
				scr_new_popup("Not enough endurance.");
				audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
			}
			
			
		case "Increase Growth and Plant Buff":
			var _buff_already_applied = false;
			if (_farm_manager.farm_slot[obj_player.activate.entity_activate_argument[0], 5] >= _endurance)
			{
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
					audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
				}
				break;
			}
			else
			{
				scr_new_popup("Not enough endurance.");
				audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
			}
			
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
					audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
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
				audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
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
					audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
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
				audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
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
					audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
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
				audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
			}
			break;
			
		case "Increase Growth and Transform Buff":
			var _buff_found = false;
			
			if (_farm_manager.farm_slot[obj_player.activate.entity_activate_argument[0], 5] >= _endurance)
			{
				if (object_get_name(obj_player.activate.object_index) == "obj_farm")
				{
					if (_farm_manager.farm_slot[obj_player.activate.entity_activate_argument[0], 8] == _param[1])
					{
						_buff_found = true;
					}
			
					if (!_buff_found)
					{
						scr_new_popup("Requirement not met");
						audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
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
					audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
				}
			
				break;
			}
			else
			{
				scr_new_popup("Not enough endurance.");
				audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
			}
			
		#endregion
		
		#region Fairy Effects
			
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
				audio_play_sound(snd_card_success, 800, false, global.game_effects_volume * 1);
				scr_active_hand_update();
			}
			else
			{
				scr_new_popup("Not near a farm.");
				audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
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
				audio_play_sound(snd_card_success, 800, false, global.game_effects_volume * 1);
				scr_active_hand_update();
			}
			else
			{
				scr_new_popup("Not near a farm.");
				audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
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
				audio_play_sound(snd_card_success, 800, false, global.game_effects_volume * 1);
				scr_active_hand_update();
			}
			else
			{
				scr_new_popup("Not near a farm.");
				audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
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
				audio_play_sound(snd_pop, 800, false, global.game_effects_volume * 1);
				scr_active_hand_update();
			}
			else
			{
				scr_new_popup("Not near a farm.");
				audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
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
							audio_play_sound(snd_card_success, 800, false, global.game_effects_volume * 1);
							scr_active_hand_discard_card(activated_card_slot);
							scr_active_hand_update();
						}
						else
						{
							scr_new_popup("No base fairy in the farm.");
							audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
						}
					}
					else if (_param == "Titania")
					{
						var _slot = obj_player.activate.entity_activate_argument[0];
						if (_farm_manager.farm_slot[_slot, 8] == "High")
						{
							_farm_manager.farm_slot[_slot, 8] = _param;
							if (_slot % 4 != 1)
							{
								if (_farm_manager.farm_slot[_slot - 1, 8] != "Fairy" && _farm_manager.farm_slot[_slot - 1, 0] > 0)
								{
									_farm_manager.farm_slot[_slot - 1, 8] = "Fairy";
								}
							}
							
							if (_slot % 4 != 0)
							{
								if (_farm_manager.farm_slot[_slot + 1, 8] != "Fairy" && _farm_manager.farm_slot[_slot + 1, 0] > 0)
								{
									_farm_manager.farm_slot[_slot + 1, 8] = "Fairy";
								}
							}
							
							if (_slot / 4 > 1)
							{
								if (_farm_manager.farm_slot[_slot - 4, 8] != "Fairy" && _farm_manager.farm_slot[_slot - 4, 0] > 0)
								{
									_farm_manager.farm_slot[_slot - 4, 8] = "Fairy";
								}
							}
							
							if (_slot / 4 <= 2)
							{
								if (_farm_manager.farm_slot[_slot + 4, 8] != "Fairy" && _farm_manager.farm_slot[_slot + 4, 0] > 0)
								{
									_farm_manager.farm_slot[_slot + 4, 8] = "Fairy";
								}
							}
							
							scr_active_hand_discard_card(activated_card_slot);
							audio_play_sound(snd_card_success, 800, false, global.game_effects_volume * 1);
							scr_active_hand_update();
						}
						else
						{
							scr_new_popup("No high fairy in the farm.");
							audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
						}
					}
					else if (_param == "Oberon")
					{
						var _slot = obj_player.activate.entity_activate_argument[0];
						if (_farm_manager.farm_slot[_slot, 8] == "High")
						{
							_farm_manager.farm_slot[_slot, 8] = _param;
							if (_slot % 4 != 1)
							{
								if (_farm_manager.farm_slot[_slot - 1, 8] == "Fairy")
								{
									_farm_manager.farm_slot[_slot - 1, 8] = "High";
								}
							}
							
							if (_slot % 4 != 0)
							{
								if (_farm_manager.farm_slot[_slot + 1, 8] == "Fairy")
								{
									_farm_manager.farm_slot[_slot + 1, 8] = "High";
								}
							}
							
							if (_slot / 4 > 1)
							{
								if (_farm_manager.farm_slot[_slot - 4, 8] == "Fairy")
								{
									_farm_manager.farm_slot[_slot - 4, 8] = "High";
								}
							}
							
							if (_slot / 4 <= 2)
							{
								if (_farm_manager.farm_slot[_slot + 4, 8] == "Fairy")
								{
									_farm_manager.farm_slot[_slot + 4, 8] = "High";
								}
							}
							
							scr_active_hand_discard_card(activated_card_slot);
							audio_play_sound(snd_card_success, 800, false, global.game_effects_volume * 1);
							scr_active_hand_update();
						}
						else
						{
							scr_new_popup("No high fairy in the farm.");
							audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
						}
					}
					
				}
				else
				{
					scr_new_popup("Farm has no plant.");
					audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
				}
			}
			else
			{
				scr_new_popup("Not near a farm.");
				audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
			}
			break;
			
		case "High Fairy Increase Growth":
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				_param = scr_apply_buff(_param, 1);
				_endurance = scr_apply_buff(_endurance, 3);
				var _has_high_fairy = false;
				for (var _i = 1; _i <= 12; _i++)
				{
					if (_farm_manager.farm_slot[_i, 0] > 0)
					{
						if (_farm_manager.farm_slot[_i, 8] == "High")
						{
							_has_high_fairy = true;
							break;
						}
					}
				}
				
				if (_has_high_fairy)
				{
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
					audio_play_sound(snd_card_success, 800, false, global.game_effects_volume * 1);
					scr_active_hand_update();
				}
				else
				{
					scr_new_popup("No high fairy in the farm.");
					audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
				}
			}
			else
			{
				scr_new_popup("Not near a farm.");
				audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
			}
			break;
			
		case "High Fairy Increase Nutrients":
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				_param = scr_apply_buff(_param, 2);
				_endurance = scr_apply_buff(_endurance, 3);
				var _has_high_fairy = false;
				for (var _i = 1; _i <= 12; _i++)
				{
					if (_farm_manager.farm_slot[_i, 0] > 0)
					{
						if (_farm_manager.farm_slot[_i, 8] == "High")
						{
							_has_high_fairy = true;
							break;
						}
					}
				}
				
				if (_has_high_fairy)
				{
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
					audio_play_sound(snd_card_success, 800, false, global.game_effects_volume * 1);
					scr_active_hand_update();
				}
				else
				{
					scr_new_popup("No high fairy in the farm.");
					audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
				}
			}
			else
			{
				scr_new_popup("Not near a farm.");
				audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
			}
			break;
			
		case "High Fairy Increase Endurance":
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				var _has_high_fairy = false;
				for (var _i = 1; _i <= 12; _i++)
				{
					if (_farm_manager.farm_slot[_i, 0] > 0)
					{
						if (_farm_manager.farm_slot[_i, 8] == "High")
						{
							_has_high_fairy = true;
							break;
						}
					}
				}
				
				if (_has_high_fairy)
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
					audio_play_sound(snd_card_success, 800, false, global.game_effects_volume * 1);
					scr_active_hand_update();
				}
				else
				{
					scr_new_popup("No high fairy in the farm.");
					audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
				}
			}
			else
			{
				scr_new_popup("Not near a farm.");
				audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
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
						audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
					}
				}
				else
				{
					scr_new_popup("Farm has no plant.");
					audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
				}
			}
			else
			{
				scr_new_popup("Not near a farm.");
				audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
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
						scr_active_hand_discard_card(activated_card_slot);
						audio_play_sound(snd_card_success, 800, false, global.game_effects_volume * 1);
						scr_active_hand_update();
					}
					else
					{
						scr_new_popup("No fairy at this plant.");
						audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
					}
				}
				else
				{
					scr_new_popup("Farm has no plant.");
					audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
				}
			}
			else
			{
				scr_new_popup("Not near a farm.");
				audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
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
				audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
			}
			break;
		
		#endregion
		
		#region Harmony Effects
		
		case "Harmony Growth Increase":
		
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				var _slot = obj_player.activate.entity_activate_argument[0];
				if (_farm_manager.farm_slot[_slot, 0] > 0)
				{
					var _buff = _farm_manager.farm_slot[_slot, 8];
					if (string_char_at(_buff, 1) == "X")
					{
						_param = floor(_param * (1 + 0.2 * real(string_char_at(_buff, 2))));
					
						_param = scr_apply_buff(_param, 1);
						_endurance = scr_apply_buff(_endurance, 3);
					}
					else
					{
						_param = scr_apply_buff(_param, 1);
						_endurance = scr_apply_buff(_endurance, 3);
					}
				
					if (_farm_manager.farm_slot[_slot, 5] >= _endurance)
					{
						// Increase Growth
						var _temp = _farm_manager.farm_slot[_slot, 1] + _param;
						if (_temp > _farm_manager.farm_slot[_slot, 2])
						{
							_temp = _farm_manager.farm_slot[_slot, 2];
						}
						_farm_manager.farm_slot[_slot, 1] = _temp;
		
						// Decrease Endurance
						_farm_manager.farm_slot[_slot, 5] -= _endurance;
		
						scr_active_hand_discard_card(activated_card_slot);
						audio_play_sound(snd_card_success, 800, false, global.game_effects_volume * 1);
						scr_active_hand_update();
						return true;
					}
					else
					{
						scr_new_popup("Not enough endurance");
						audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
						return false;
					}
				}
				else
				{
					scr_new_popup("There is no plant here");
					audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
					return false;
				}
			}
			else
			{
				scr_new_popup("Not a farm");
				audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
			}
			
			break;
			
		case "Harmony Nutrients Increase":
		
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				var _slot = obj_player.activate.entity_activate_argument[0];
				if (_farm_manager.farm_slot[_slot, 0] > 0)
				{
					
					var _buff = _farm_manager.farm_slot[_slot, 8];
					if (string_char_at(_buff, 1) == "X")
					{
						_param = floor(_param * (1 + 0.2 * real(string_char_at(_buff, 2))));
					}
				
					_param = scr_apply_buff(_param, 2);
					_endurance = scr_apply_buff(_endurance, 3);
				
					if (_farm_manager.farm_slot[_slot, 5] >= _endurance)
					{
						if (_farm_manager.farm_slot[_slot, 1] < _farm_manager.farm_slot[_slot, 2])
						{
							_farm_manager.farm_slot[_slot, 3] += _param;
							if (_farm_manager.farm_slot[_slot, 3] >= _farm_manager.farm_slot[_slot, 4])
							{
								_farm_manager.farm_slot[_slot, 3] -= _farm_manager.farm_slot[_slot, 4];
								_farm_manager.farm_slot[_slot, 4] *= 2;
								_farm_manager.farm_slot[_slot, 7] += 1;
							}
							_farm_manager.farm_slot[_slot, 5] -= _endurance
			
							if (_farm_manager.farm_slot[_slot, 7] == 3)
							{
								_farm_manager.farm_slot[_slot, 4] = 999;
							}
			
							scr_active_hand_discard_card(activated_card_slot);
							audio_play_sound(snd_card_success, 800, false, global.game_effects_volume * 1);
							scr_active_hand_update();
		
							return true;
						}
						else
						{
							scr_new_popup("Plant is already fully grown");
							audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
							return false;
						}
					}
					else
					{
						scr_new_popup("Not enough endurance");
						audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
						return false;
					}
				}
				else
				{
					scr_new_popup("There is no plant here");
					audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
					return false;
				}
			}
			else
			{
				scr_new_popup("Not a farm");
				audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
			}
			
			break;
		
		case "Harmony Endurance Increase":
		
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				var _slot = obj_player.activate.entity_activate_argument[0];
				var _buff = _farm_manager.farm_slot[_slot, 8];
				if (string_char_at(_buff, 1) == "X")
				{
					_param = floor(_param * (1 + 0.2 * real(string_char_at(_buff, 2))));
				}
				
				if (_farm_manager.farm_slot[_slot, 0] > 0)
				{
					_farm_manager.farm_slot[_slot, 5] += _param;
					if (_farm_manager.farm_slot[_slot, 5] >= _farm_manager.farm_slot[_slot, 6])
					{
						_farm_manager.farm_slot[_slot, 5] = _farm_manager.farm_slot[_slot, 6];
					}
	
					scr_active_hand_discard_card(activated_card_slot);
					audio_play_sound(snd_card_success, 800, false, global.game_effects_volume * 1);
					scr_active_hand_update();
	
					return true;
				}
				else
				{
					scr_new_popup("There is no plant here");
					audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
					return false;
				}
			}
			else
			{
				scr_new_popup("Not a farm");
				audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
			}
			
			break;
			
		case "Harmony Reduce Nutrients":
		
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				var _slot = obj_player.activate.entity_activate_argument[0];
				
				if (_farm_manager.farm_slot[_slot, 0] > 0)
				{
					if (_farm_manager.farm_slot[_slot, 3] >= _param[0])
					{
						var _buff = _farm_manager.farm_slot[_slot, 8];
						var _buff_found = false;

						_endurance = scr_apply_buff(_endurance, 3);				
				
						if (string_char_at(_buff, 1) == "X")
						{
							_buff_found = true;
					
							var _temp_stack = real(string_char_at(_buff, 2)) + _param[1];
							
							if (_temp_stack > 9)
							{
								_temp_stack = 9;
							}
					
							_farm_manager.farm_slot[_slot, 8] = "X" + string(_temp_stack);
						}
						else
						{
							_farm_manager.farm_slot[_slot, 8] = "X" + string(_param[1]);
						}
					
						_farm_manager.farm_slot[_slot, 3] -= _param[0];
						_farm_manager.farm_slot[_slot, 5] -= _endurance
						
						scr_active_hand_discard_card(activated_card_slot);
						audio_play_sound(snd_card_success, 800, false, global.game_effects_volume * 1);
						scr_active_hand_update();
						return true;
					}
					else
					{
						scr_new_popup("Not enough nutrients");
						audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
						return false;
					}		
				}
				else
				{
					scr_new_popup("There is no plant here");
					audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
					return false;
				}
			}
			else
			{
				scr_new_popup("Not a farm");
				audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
			}
		
			break;
		
		case "Harmony Reduce Endurance":
		
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				var _slot = obj_player.activate.entity_activate_argument[0];
				
				if (_farm_manager.farm_slot[_slot, 0] > 0)
				{
					_endurance = scr_apply_buff(_endurance, 3);
					if (_farm_manager.farm_slot[_slot, 5] >= _param[0] + _endurance)
					{
						var _buff = _farm_manager.farm_slot[_slot, 8];
						var _buff_found = false;
				
						if (string_char_at(_buff, 1) == "X")
						{
							_buff_found = true;
					
							var _temp_stack = real(string_char_at(_buff, 2)) + _param[1];
							if (_temp_stack > 9)
							{
								_temp_stack = 9;
							}
					
							_farm_manager.farm_slot[_slot, 8] = "X" + string(_temp_stack);
						}
						else
						{
							_farm_manager.farm_slot[_slot, 8] = "X" + string(_param[1]);
						}
					
						_farm_manager.farm_slot[_slot, 5] -= _param[0];
						_farm_manager.farm_slot[_slot, 5] -= _endurance
						
						scr_active_hand_discard_card(activated_card_slot);
						audio_play_sound(snd_card_success, 800, false, global.game_effects_volume * 1);
						scr_active_hand_update();
						return true;
					}
					else
					{
						scr_new_popup("Not enough endurance");
						audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
						return false;
					}		
				}
				else
				{
					scr_new_popup("There is no plant here");
					audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
					return false;
				}
			}
			else
			{
				scr_new_popup("Not a farm");
				audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
			}
		
			break;
		
		case "Harmony Increase Growth":
		
			var _slot = obj_player.activate.entity_activate_argument[0];
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				if (_farm_manager.farm_slot[_slot, 0] > 0)
				{
					var _slot = obj_player.activate.entity_activate_argument[0];
					var _buff = _farm_manager.farm_slot[_slot, 8];
					var _buff_found = false;
				
					_endurance = scr_apply_buff(_endurance, 3);
				
					if (_farm_manager.farm_slot[_slot, 5] >= _endurance)
					{
						_param[0] = scr_apply_buff(_param[0], 1);
					
						if (string_char_at(_buff, 1) == "X")
						{
							_buff_found = true;
					
							var _temp_stack = real(string_char_at(_buff, 2)) + _param[1];
							if (_temp_stack > 9)
							{
								_temp_stack = 9;
							}
					
							_farm_manager.farm_slot[_slot, 8] = "X" + string(_temp_stack);
						}
						else
						{
							_farm_manager.farm_slot[_slot, 8] = "X" + string(_param[1]);
						}
					
						// Increase Growth
						var _temp = _farm_manager.farm_slot[_slot, 1] + _param[0];
						if (_temp > _farm_manager.farm_slot[_slot, 2])
						{
							_temp = _farm_manager.farm_slot[_slot, 2];
						}
						_farm_manager.farm_slot[_slot, 1] = _temp;
		
						// Decrease Endurance
						_farm_manager.farm_slot[_slot, 5] -= _endurance;
		
						scr_active_hand_discard_card(activated_card_slot);
						audio_play_sound(snd_card_success, 800, false, global.game_effects_volume * 1);
						scr_active_hand_update();
						return true;
					}
					else
					{
						scr_new_popup("Not enough endurance");
						audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
						return false;
					}
				}
				else
				{
					scr_new_popup("No crop in the farm.");
					audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
				}
			}
			else
			{
				scr_new_popup("Not a farm");
				audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
			}
			
			break;
			
		case "Harmony Increase Nutrients":
		
			var _slot = obj_player.activate.entity_activate_argument[0];
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				if (_farm_manager.farm_slot[_slot, 0] > 0)
				{
					var _slot = obj_player.activate.entity_activate_argument[0];
					var _buff = _farm_manager.farm_slot[_slot, 8];
					var _buff_found = false;
				
					_endurance = scr_apply_buff(_endurance, 3);
				
					if (_farm_manager.farm_slot[_slot, 5] >= _endurance)
					{
						_param[0] = scr_apply_buff(_param[0], 2);
					
						if (string_char_at(_buff, 1) == "X")
						{
							_buff_found = true;
					
							var _temp_stack = real(string_char_at(_buff, 2)) + _param[1];
							if (_temp_stack > 9)
							{
								_temp_stack = 9;
							}
					
							_farm_manager.farm_slot[_slot, 8] = "X" + string(_temp_stack);
						}
						else
						{
							_farm_manager.farm_slot[_slot, 8] = "X" + string(_param[1]);
						}
					
						if (_farm_manager.farm_slot[_slot, 1] < _farm_manager.farm_slot[_slot, 2])
						{
							_farm_manager.farm_slot[_slot, 3] += _param[0];
							if (_farm_manager.farm_slot[_slot, 3] >= _farm_manager.farm_slot[_slot, 4])
							{
								_farm_manager.farm_slot[_slot, 3] -= _farm_manager.farm_slot[_slot, 4];
								_farm_manager.farm_slot[_slot, 4] *= 2;
								_farm_manager.farm_slot[_slot, 7] += 1;
							}
							_farm_manager.farm_slot[_slot, 5] -= _endurance
			
							if (_farm_manager.farm_slot[_slot, 7] == 3)
							{
								_farm_manager.farm_slot[_slot, 4] = 999;
							}
			
							scr_active_hand_discard_card(activated_card_slot);
							audio_play_sound(snd_card_success, 800, false, global.game_effects_volume * 1);
							scr_active_hand_update();
		
							return true;
						}
						else
						{
							scr_new_popup("Plant already fully grown");
							audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
							return false;
						}
					}
					else
					{
						scr_new_popup("No crop in the farm.");
						audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
					}
				}
				else
				{
					scr_new_popup("Not enough endurance");
					audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
					return false;
				}
			}
			else
			{
				scr_new_popup("Not a farm");
				audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
			}
			
			break;
		
		case "Harmony Increase Endurance":
		
			var _slot = obj_player.activate.entity_activate_argument[0];
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				if (_farm_manager.farm_slot[_slot, 0] > 0)
				{
					var _slot = obj_player.activate.entity_activate_argument[0];
					var _buff = _farm_manager.farm_slot[_slot, 8];
					var _buff_found = false;
					
					if (string_char_at(_buff, 1) == "X")
					{
						_buff_found = true;
					
						var _temp_stack = real(string_char_at(_buff, 2)) + _param[1];
						if (_temp_stack > 9)
						{
							_temp_stack = 9;
						}
					
						_farm_manager.farm_slot[_slot, 8] = "X" + string(_temp_stack);
					}
					else
					{
						_farm_manager.farm_slot[_slot, 8] = "X" + string(_param[1]);
					}
					
					_farm_manager.farm_slot[_slot, 5] += _param[0];
					if (_farm_manager.farm_slot[_slot, 5] >= _farm_manager.farm_slot[_slot, 6])
					{
						_farm_manager.farm_slot[_slot, 5] = _farm_manager.farm_slot[_slot, 6];
					}
	
					scr_active_hand_discard_card(activated_card_slot);
					audio_play_sound(snd_card_success, 800, false, global.game_effects_volume * 1);
					scr_active_hand_update();
	
					return true;
				}
				else
				{
					scr_new_popup("No crop in the farm.");
					audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
				}
			}
			else
			{
				scr_new_popup("Not a farm");
				audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
			}
			
			break;
			
		case "Harmony Deduction Growth Increase":
		
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				var _slot = obj_player.activate.entity_activate_argument[0];
				if (_farm_manager.farm_slot[_slot, 0] > 0)
				{
					var _buff = _farm_manager.farm_slot[_slot, 8];
					if (string_char_at(_buff, 1) == "X")
					{
						if (real(string_char_at(_buff, 2)) >= _param[1])
						{
							_param[0] = floor(_param[0] * (1 + 0.2 * real(string_char_at(_buff, 2))));
							
							_param[0] = scr_apply_buff(_param[0], 1);
							_endurance = scr_apply_buff(_endurance, 3);
							
							if (_farm_manager.farm_slot[_slot, 5] >= _endurance)
							{
								var _temp_stack = real(string_char_at(_buff, 2) - _param[1]);
								if (_temp_stack == 0)
								{
									_farm_manager.farm_slot[_slot, 8] =  -1;
								}
								else
								{
									_farm_manager.farm_slot[_slot, 8] = "X" + string(_temp_stack);
								}
								
								// Increase Growth
								var _temp = _farm_manager.farm_slot[_slot, 1] + _param[0];
								if (_temp > _farm_manager.farm_slot[_slot, 2])
								{
									_temp = _farm_manager.farm_slot[_slot, 2];
								}
								_farm_manager.farm_slot[_slot, 1] = _temp;
		
								// Decrease Endurance
								_farm_manager.farm_slot[_slot, 5] -= _endurance;
		
								scr_active_hand_discard_card(activated_card_slot);
								audio_play_sound(snd_card_success, 800, false, global.game_effects_volume * 1);
								scr_active_hand_update();
								return true;
							}
							else
							{
								scr_new_popup("Not enough endurance");
								audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
								return false;
							}
						}
						else
						{
							scr_new_popup("Not enough harmony stack.");
							audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
							return false;
						}
					}
					else
					{
						scr_new_popup("No harmony stack.");
						audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
						return false;
					}
				}
				else
				{
					scr_new_popup("There is no plant here");
					audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
					return false;
				}
			}
			else
			{
				scr_new_popup("Not a farm");
				audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
			}
			
			break;
			
		case "Harmony Deduction Nutrients Increase":
		
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				var _slot = obj_player.activate.entity_activate_argument[0];
				if (_farm_manager.farm_slot[_slot, 0] > 0)
				{
					var _buff = _farm_manager.farm_slot[_slot, 8];
					if (string_char_at(_buff, 1) == "X")
					{
						if (real(string_char_at(_buff, 2)) >= _param[1])
						{
							_param[0] = floor(_param[0] * (1 + 0.2 * real(string_char_at(_buff, 2))));
							
							_param[0] = scr_apply_buff(_param[0], 2);
							_endurance = scr_apply_buff(_endurance, 3);
							
							if (_farm_manager.farm_slot[_slot, 5] >= _endurance)
							{
								if (_farm_manager.farm_slot[_slot, 1] < _farm_manager.farm_slot[_slot, 2])
								{
									var _temp_stack = real(string_char_at(_buff, 2) - _param[1]);
									if (_temp_stack == 0)
									{
										_farm_manager.farm_slot[_slot, 8] =  -1;
									}
									else
									{
										_farm_manager.farm_slot[_slot, 8] = "X" + string(_temp_stack);
									}
									
									_farm_manager.farm_slot[_slot, 3] += _param[0];
									if (_farm_manager.farm_slot[_slot, 3] >= _farm_manager.farm_slot[_slot, 4])
									{
										_farm_manager.farm_slot[_slot, 3] -= _farm_manager.farm_slot[_slot, 4];
										_farm_manager.farm_slot[_slot, 4] *= 2;
										_farm_manager.farm_slot[_slot, 7] += 1;
									}
									_farm_manager.farm_slot[_slot, 5] -= _endurance;
			
									if (_farm_manager.farm_slot[_slot, 7] == 3)
									{
										_farm_manager.farm_slot[_slot, 4] = 999;
									}
			
									scr_active_hand_discard_card(activated_card_slot);
									audio_play_sound(snd_card_success, 800, false, global.game_effects_volume * 1);
									scr_active_hand_update();
		
									return true;
								}
								else
								{
									scr_new_popup("Plant is already fully grown");
									audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
									return false;
								}
							}
							else
							{
								scr_new_popup("Not enough endurance");
								audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
								return false;
							}
						}
						else
						{
							scr_new_popup("Not enough harmony stack.");
							audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
							return false;
						}
					}
					else
					{
						scr_new_popup("No harmony stack.");
						audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
						return false;
					}
				}
				else
				{
					scr_new_popup("There is no plant here");
					audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
					return false;
				}
			}
			else
			{
				scr_new_popup("Not a farm");
				audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
			}
			
			break;
			
		case "Harmony Deduction Endurance Increase":
		
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				var _slot = obj_player.activate.entity_activate_argument[0];
				if (_farm_manager.farm_slot[_slot, 0] > 0)
				{
					var _buff = _farm_manager.farm_slot[_slot, 8];
					if (string_char_at(_buff, 1) == "X")
					{
						if (real(string_char_at(_buff, 2)) >= _param[1])
						{
							_param[0] = floor(_param[0] * (1 + 0.2 * real(string_char_at(_buff, 2))));
							var _temp_stack = real(string_char_at(_buff, 2) - _param[1]);
							if (_temp_stack == 0)
							{
								_farm_manager.farm_slot[_slot, 8] =  -1;
							}
							else
							{
								_farm_manager.farm_slot[_slot, 8] = "X" + string(_temp_stack);
							}
								
							_farm_manager.farm_slot[_slot, 5] += _param[0];
								
							if (_farm_manager.farm_slot[_slot, 5] >= _farm_manager.farm_slot[_slot, 6])
							{
								_farm_manager.farm_slot[_slot, 5] = _farm_manager.farm_slot[_slot, 6];
							}
	
							scr_active_hand_discard_card(activated_card_slot);
							audio_play_sound(snd_card_success, 800, false, global.game_effects_volume * 1);
							scr_active_hand_update();
	
							return true;
						}
						else
						{
							scr_new_popup("Not enough harmony stack.");
							audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
							return false;
						}
					}
					else
					{
						scr_new_popup("No harmony stack.");
						audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
						return false;
					}
				}
				else
				{
					scr_new_popup("There is no plant here");
					audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
					return false;
				}
			}
			else
			{
				scr_new_popup("Not a farm");
				audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
			}
			
			break;
		
		case "Harmony Growth Final Increase":
		
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				var _slot = obj_player.activate.entity_activate_argument[0];
				if (_farm_manager.farm_slot[_slot, 0] > 0)
				{
					var _buff = _farm_manager.farm_slot[_slot, 8];
					
					if (string_char_at(_buff, 1) == "X")
					{
						_param[0] *= real(string_char_at(_buff, 2));
						_endurance = scr_apply_buff(_endurance, 3);	
						
						if (_farm_manager.farm_slot[_slot, 5] >= _endurance)
						{
							_farm_manager.farm_slot[_slot, 8] =  -1;
								
							_farm_manager.farm_slot[_slot, 1] += _param[0];
								
							if (_farm_manager.farm_slot[_slot, 1] >= _farm_manager.farm_slot[_slot, 2])
							{
								_farm_manager.farm_slot[_slot, 1] = _farm_manager.farm_slot[_slot, 2];
							}
	
							scr_active_hand_discard_card(activated_card_slot);
							audio_play_sound(snd_card_success, 800, false, global.game_effects_volume * 1);
							scr_active_hand_update();
	
							return true;
						}
						else
						{
							scr_new_popup("Not enough endurance");
							audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
							return false;
						}
					}
					else
					{
						scr_new_popup("No harmony stack.");
						audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
						return false;
					}
				}
				else
				{
					scr_new_popup("There is no plant here");
					audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
					return false;
				}
			}
			else
			{
				scr_new_popup("Not a farm");
				audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
			}
			
			break;
			
		case "Harmony Nutrients Final Increase":
		
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				var _slot = obj_player.activate.entity_activate_argument[0];
				if (_farm_manager.farm_slot[_slot, 0] > 0)
				{
					var _buff = _farm_manager.farm_slot[_slot, 8];
					
					if (string_char_at(_buff, 1) == "X")
					{
						_param[0] *= real(string_char_at(_buff, 2));
						_endurance = scr_apply_buff(_endurance, 3);	
						
						if (_farm_manager.farm_slot[_slot, 5] >= _endurance)
						{
							if (_farm_manager.farm_slot[_slot, 1] < _farm_manager.farm_slot[_slot, 2])
							{
								_farm_manager.farm_slot[_slot, 8] =  -1;
									
								_farm_manager.farm_slot[_slot, 3] += _param[0];
								if (_farm_manager.farm_slot[_slot, 3] >= _farm_manager.farm_slot[_slot, 4])
								{
									_farm_manager.farm_slot[_slot, 3] -= _farm_manager.farm_slot[_slot, 4];
									_farm_manager.farm_slot[_slot, 4] *= 2;
									_farm_manager.farm_slot[_slot, 7] += 1;
								}
								_farm_manager.farm_slot[_slot, 5] -= _endurance;
			
								if (_farm_manager.farm_slot[_slot, 7] == 3)
								{
									_farm_manager.farm_slot[_slot, 4] = 999;
								}
			
								scr_active_hand_discard_card(activated_card_slot);
								audio_play_sound(snd_card_success, 800, false, global.game_effects_volume * 1);
								scr_active_hand_update();
		
								return true;
							}
							else
							{
								scr_new_popup("Plant is already fully grown");
								audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
								return false;
							}
						}
						else
						{
							scr_new_popup("Not enough endurance");
							audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
							return false;
						}
					}
					else
					{
						scr_new_popup("No harmony stack.");
						audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
						return false;
					}
				}
				else
				{
					scr_new_popup("There is no plant here");
					audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
					return false;
				}
			}
			else
			{
				scr_new_popup("Not a farm");
				audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
			}
			
			break;
		
		#endregion
		
		#region 61-80 Effects
		
		case "Row Growth Increase":
		
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				var _slot = obj_player.activate.entity_activate_argument[0];
				var _row = floor(_slot / 4) + 1;
				var _column = _slot % 4
				var _check_amount = _param[0];
				var _increase_amount = _param[1];
				_increase_amount = scr_apply_buff(_increase_amount, 1);
				_endurance = scr_apply_buff(_endurance, 3);
				
				if (_farm_manager.farm_slot[_slot, 0] > 0)
				{
					var _plant_type = _farm_manager.farm_slot[_slot, 0];
					var _same_count = 1;
					var _same_array = [_slot];
					
					for (var _i = 1 + (4 * (_row - 1)); _i <= 4 + (4 * (_row - 1)); _i++)
					{
						if (_i != _slot)
						{
							if (_farm_manager.farm_slot[_i, 0] == _plant_type)
							{
								_same_array[_same_count] = _i;
								_same_count++;
							}
						}
					}
					
					if (_same_count >= _check_amount)
					{
						var _enough_endurance = true;
						for (var _i = 0; _i < _check_amount; _i++)
						{
							if (_farm_manager.farm_slot[_same_array[_i], 5] < _endurance)
							{
								_enough_endurance = false;
							}
						}
						
						if (_enough_endurance)
						{
							for (var _i = 0; _i < _check_amount; _i++)
							{
								var _temp = _farm_manager.farm_slot[_same_array[_i], 1] + _increase_amount;
								if (_temp > _farm_manager.farm_slot[_same_array[_i], 2])
								{
									_temp = _farm_manager.farm_slot[_same_array[_i], 2];
								}
								_farm_manager.farm_slot[_same_array[_i], 1] = _temp;
		
								// Decrease Endurance
								_farm_manager.farm_slot[_same_array[_i], 5] -= _endurance;
							}							
							scr_active_hand_discard_card(activated_card_slot);
							audio_play_sound(snd_card_success, 800, false, global.game_effects_volume * 1);
							scr_active_hand_update();
							return true;
						}
						else
						{
							scr_new_popup("Not enough endurance");
							audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
							return false;
						}
					}
					else
					{
						scr_new_popup("Not enough same plants");
						audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
						return false;
					}
				}
				else
				{
					scr_new_popup("There is no plant here");
					audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
					return false;
				}
			}
			else
			{
				scr_new_popup("Not near a farm.");
				audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
				return false;
			}
			break;
		
		case "Column Nutrients Increase":
		
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				var _slot = obj_player.activate.entity_activate_argument[0];
				var _row = floor(_slot / 4) + 1;
				var _column = _slot % 4
				var _check_amount = _param[0];
				var _increase_amount = _param[1];
				_increase_amount = scr_apply_buff(_increase_amount, 2);
				_endurance = scr_apply_buff(_endurance, 3);
				
				if (_farm_manager.farm_slot[_slot, 0] > 0)
				{
					var _plant_type = _farm_manager.farm_slot[_slot, 0];
					var _same_count = 1;
					var _same_array = [_slot];
					
					if (_column != 0)
					{
						for (var _i = 0; _i <= 2; _i++)
						{
							if (_column + (4 * _i) != _slot)
							{
								if (_farm_manager.farm_slot[_column + (4 * _i), 0] == _plant_type)
								{
									_same_array[_same_count] = _column + (4 * _i);
									_same_count++;
								}
							}
						}
					}
					else
					{
						for (var _i = 0; _i <= 2; _i++)
						{
							if (4 + (4 * _i) != _slot)
							{
								if (_farm_manager.farm_slot[4 + (4 * _i), 0] == _plant_type)
								{
									_same_array[_same_count] = 4 + (4 * _i);
									_same_count++;
								}
							}
						}
					}
					
					if (_same_count >= _check_amount)
					{
						var _enough_endurance = true;
						for (var _i = 0; _i < _check_amount; _i++)
						{
							if (_farm_manager.farm_slot[_same_array[_i], 5] < _endurance)
							{
								_enough_endurance = false;
							}
						}
						
						if (_enough_endurance)
						{
							var _not_fully_grown = true;
							for (var _i = 0; _i < _check_amount; _i++)
							{
								if (_farm_manager.farm_slot[_same_array[_i], 1] >= _farm_manager.farm_slot[_same_array[_i], 2])
								{
									_not_fully_grown = false;
								}
							}
							
							if (_not_fully_grown)
							{
								for (var _i = 0; _i < _check_amount; _i++)
								{
									_farm_manager.farm_slot[_same_array[_i], 3] += _increase_amount;
									if (_farm_manager.farm_slot[_same_array[_i], 3] >= _farm_manager.farm_slot[_same_array[_i], 4])
									{
										_farm_manager.farm_slot[_same_array[_i], 3] -= _farm_manager.farm_slot[_same_array[_i], 4];
										_farm_manager.farm_slot[_same_array[_i], 4] *= 2;
										_farm_manager.farm_slot[_same_array[_i], 7] += 1;
									}
									_farm_manager.farm_slot[_same_array[_i], 5] -= _endurance
			
									if (_farm_manager.farm_slot[_same_array[_i], 7] == 3)
									{
										_farm_manager.farm_slot[_same_array[_i], 4] = 999;
									}
								}
								scr_active_hand_discard_card(activated_card_slot);
								audio_play_sound(snd_card_success, 800, false, global.game_effects_volume * 1);
								scr_active_hand_update();
								return true;
							}
							else
							{
								scr_new_popup("Plant is already fully grown");
								audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
								return false;
							}
						}
						else
						{
							scr_new_popup("Not enough endurance");
							audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
							return false;
						}
					}
					else
					{
						scr_new_popup("Not enough same plants");
						audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
						return false;
					}
				}
				else
				{
					scr_new_popup("There is no plant here");
					audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
					return false;
				}
			}
			else
			{
				scr_new_popup("Not near a farm.");
				audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
				return false;
			}
			break;
		
		case "Diag Endurance Increase":
		
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				var _slot = obj_player.activate.entity_activate_argument[0];
				var _row = floor(_slot / 4) + 1;
				var _column = _slot % 4
				var _check_amount = _param[0];
				var _increase_amount = _param[1];
				
				if (_farm_manager.farm_slot[_slot, 0] > 0)
				{
					var _plant_type = _farm_manager.farm_slot[_slot, 0];
					var _same_count = 1;
					var _same_array = [_slot];
					
					if (_column > 0 && _row < 3)
					{
						if (_farm_manager.farm_slot[_slot + 5, 0] == _plant_type)
						{
							_same_array[_same_count] = _slot + 5;
							_same_count++;
						}
					}
					
					if (_column != 1 && _row < 3)
					{
						if (_farm_manager.farm_slot[_slot + 3, 0] == _plant_type)
						{
							_same_array[_same_count] = _slot + 3;
							_same_count++;
						}
					}
					
					if (_column > 0 && _row > 1)
					{
						if (_farm_manager.farm_slot[_slot - 3, 0] == _plant_type)
						{
							_same_array[_same_count] = _slot - 3;
							_same_count++;
						}
					}
					
					if (_column != 1 && _row > 1)
					{
						if (_farm_manager.farm_slot[_slot - 5, 0] == _plant_type)
						{
							_same_array[_same_count] = _slot - 5;
							_same_count++;
						}
					}
					
					if (_same_count >= _check_amount)
					{
					
						for (var _i = 0; _i < _check_amount; _i++)
						{
							_farm_manager.farm_slot[_same_array[_i], 5] += _increase_amount;
							if (_farm_manager.farm_slot[_same_array[_i], 5] >= _farm_manager.farm_slot[_same_array[_i], 6])
							{
								_farm_manager.farm_slot[_same_array[_i], 5] = _farm_manager.farm_slot[_same_array[_i], 6];
							}
						}							
						scr_active_hand_discard_card(activated_card_slot);
						audio_play_sound(snd_card_success, 800, false, global.game_effects_volume * 1);
						scr_active_hand_update();
						return true;
					}
					else
					{
						scr_new_popup("Not enough same plants");
						audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
						return false;
					}
				}
				else
				{
					scr_new_popup("There is no plant here");
					audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
					return false;
				}
			}
			else
			{
				scr_new_popup("Not near a farm.");
				audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
				return false;
			}
			break;		
		
		case "Field Growth Increase":
		
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				var _slot = obj_player.activate.entity_activate_argument[0];
				var _row = floor(_slot / 4) + 1;
				var _column = _slot % 4
				var _check_amount = _param[0];
				var _increase_amount = _param[1];
				_increase_amount = scr_apply_buff(_increase_amount, 1);
				_endurance = scr_apply_buff(_endurance, 3);
				
				if (_farm_manager.farm_slot[_slot, 0] > 0)
				{
					var _plant_type = _farm_manager.farm_slot[_slot, 0];
					var _same_count = 1;
					var _same_array = [_slot];
					
					for (var _i = 1; _i <= 12; _i++)
					{
						if (_i != _slot)
						{
							if (_farm_manager.farm_slot[_i, 0] == _plant_type)
							{
								_same_array[_same_count] = _i;
								_same_count++;
							}
						}
					}
					
					if (_same_count >= _check_amount)
					{
						var _enough_endurance = true;
						for (var _i = 0; _i < _check_amount; _i++)
						{
							if (_farm_manager.farm_slot[_same_array[_i], 5] < _endurance)
							{
								_enough_endurance = false;
							}
						}
						
						if (_enough_endurance)
						{
							for (var _i = 0; _i < _check_amount; _i++)
							{
								var _temp = _farm_manager.farm_slot[_same_array[_i], 1] + _increase_amount;
								if (_temp > _farm_manager.farm_slot[_same_array[_i], 2])
								{
									_temp = _farm_manager.farm_slot[_same_array[_i], 2];
								}
								_farm_manager.farm_slot[_same_array[_i], 1] = _temp;
		
								// Decrease Endurance
								_farm_manager.farm_slot[_same_array[_i], 5] -= _endurance;
							}							
							scr_active_hand_discard_card(activated_card_slot);
							audio_play_sound(snd_card_success, 800, false, global.game_effects_volume * 1);
							scr_active_hand_update();
							return true;
						}
						else
						{
							scr_new_popup("Not enough endurance");
							audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
							return false;
						}
					}
					else
					{
						scr_new_popup("Not enough same plants");
						audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
						return false;
					}
				}
				else
				{
					scr_new_popup("There is no plant here");
					audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
					return false;
				}
			}
			else
			{
				scr_new_popup("Not near a farm.");
				audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
				return false;
			}
			break;
		
		case "Field Nutrients Increase":
		
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				var _slot = obj_player.activate.entity_activate_argument[0];
				var _row = floor(_slot / 4) + 1;
				var _column = _slot % 4
				var _check_amount = _param[0];
				var _increase_amount = _param[1];
				_increase_amount = scr_apply_buff(_increase_amount, 2);
				_endurance = scr_apply_buff(_endurance, 3);
				
				if (_farm_manager.farm_slot[_slot, 0] > 0)
				{
					var _plant_type = _farm_manager.farm_slot[_slot, 0];
					var _same_count = 1;
					var _same_array = [_slot];
					
					for (var _i = 1; _i <= 12; _i++)
					{
						if (_i != _slot)
						{
							if (_farm_manager.farm_slot[_i, 0] == _plant_type)
							{
								_same_array[_same_count] = _i;
								_same_count++;
							}
						}
					}
					
					if (_same_count >= _check_amount)
					{
						var _enough_endurance = true;
						for (var _i = 0; _i < _check_amount; _i++)
						{
							if (_farm_manager.farm_slot[_same_array[_i], 5] < _endurance)
							{
								_enough_endurance = false;
							}
						}
						
						if (_enough_endurance)
						{
							var _not_fully_grown = true;
							for (var _i = 0; _i < _check_amount; _i++)
							{
								if (_farm_manager.farm_slot[_same_array[_i], 1] >= _farm_manager.farm_slot[_same_array[_i], 2])
								{
									_not_fully_grown = false;
								}
							}
							
							if (_not_fully_grown)
							{
								for (var _i = 0; _i < _check_amount; _i++)
								{
									_farm_manager.farm_slot[_same_array[_i], 3] += _increase_amount;
									if (_farm_manager.farm_slot[_same_array[_i], 3] >= _farm_manager.farm_slot[_same_array[_i], 4])
									{
										_farm_manager.farm_slot[_same_array[_i], 3] -= _farm_manager.farm_slot[_same_array[_i], 4];
										_farm_manager.farm_slot[_same_array[_i], 4] *= 2;
										_farm_manager.farm_slot[_same_array[_i], 7] += 1;
									}
									_farm_manager.farm_slot[_same_array[_i], 5] -= _endurance
			
									if (_farm_manager.farm_slot[_same_array[_i], 7] == 3)
									{
										_farm_manager.farm_slot[_same_array[_i], 4] = 999;
									}
								}
								scr_active_hand_discard_card(activated_card_slot);
								audio_play_sound(snd_card_success, 800, false, global.game_effects_volume * 1);
								scr_active_hand_update();
		
								return true;
							}
							else
							{
								scr_new_popup("Plant is already fully grown");
								audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
								return false;
							}
						}
						else
						{
							scr_new_popup("Not enough endurance");
							audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
							return false;
						}
					}
					else
					{
						scr_new_popup("Not enough same plants");
						audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
						return false;
					}
				}
				else
				{
					scr_new_popup("There is no plant here");
					audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
					return false;
				}
			}
			else
			{
				scr_new_popup("Not near a farm.");
				audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
				return false;
			}
			break;
		
		case "Unique Growth Increase":
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				var _slot = obj_player.activate.entity_activate_argument[0];
				var _row = floor(_slot / 4) + 1;
				var _column = _slot % 4
				var _increase_amount = _param;
				_increase_amount = scr_apply_buff(_increase_amount, 1);
				_endurance = scr_apply_buff(_endurance, 3);
				
				if (_farm_manager.farm_slot[_slot, 0] > 0)
				{
					var _plant_type = _farm_manager.farm_slot[_slot, 0];
					var _same_count = 1;
					var _same_array = [_slot];
					
					for (var _i = 1; _i <= 12; _i++)
					{
						if (_i != _slot)
						{
							if (_farm_manager.farm_slot[_i, 0] == _plant_type)
							{
								_same_array[_same_count] = _i;
								_same_count++;
								break;
							}
						}
					}
					
					if (_same_count == 1)
					{
						if (_farm_manager.farm_slot[_slot, 5] >= _endurance)
						{
							var _temp = _farm_manager.farm_slot[_slot, 1] + _increase_amount;
							if (_temp > _farm_manager.farm_slot[_slot, 2])
							{
								_temp = _farm_manager.farm_slot[_slot, 2];
							}
							_farm_manager.farm_slot[_slot, 1] = _temp;
		
							// Decrease Endurance
							_farm_manager.farm_slot[_slot, 5] -= _endurance;
							
							scr_active_hand_discard_card(activated_card_slot);
							audio_play_sound(snd_card_success, 800, false, global.game_effects_volume * 1);
							scr_active_hand_update();
							return true;
						}
						else
						{
							scr_new_popup("Not enough endurance");
							audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
							return false;
						}
					}
					else
					{
						scr_new_popup("Too many same plants");
						audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
						return false;
					}
				}
				else
				{
					scr_new_popup("There is no plant here");
					audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
					return false;
				}
			}
			else
			{
				scr_new_popup("Not near a farm.");
				audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
				return false;
			}
			break;
			
		case "Unique Nutrients Increase":
		
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				var _slot = obj_player.activate.entity_activate_argument[0];
				var _row = floor(_slot / 4) + 1;
				var _column = _slot % 4
				var _increase_amount = _param;
				_increase_amount = scr_apply_buff(_increase_amount, 2);
				_endurance = scr_apply_buff(_endurance, 3);
				
				if (_farm_manager.farm_slot[_slot, 0] > 0)
				{
					var _plant_type = _farm_manager.farm_slot[_slot, 0];
					var _same_count = 1;
					var _same_array = [_slot];
					
					for (var _i = 1; _i <= 12; _i++)
					{
						if (_i != _slot)
						{
							if (_farm_manager.farm_slot[_i, 0] == _plant_type)
							{
								_same_array[_same_count] = _i;
								_same_count++;
								break;
							}
						}
					}
					
					if (_same_count == 1)
					{
						show_debug_message(_slot);
						show_debug_message(_farm_manager.farm_slot[_slot, 1]);
						show_debug_message(_farm_manager.farm_slot[_slot, 2]);
						if (_farm_manager.farm_slot[_slot, 5] >= _endurance)
						{
							if (_farm_manager.farm_slot[_slot, 1] < _farm_manager.farm_slot[_slot, 2])
							{
								
								_farm_manager.farm_slot[_slot, 3] += _increase_amount;
								if (_farm_manager.farm_slot[_slot, 3] >= _farm_manager.farm_slot[_slot, 4])
								{
									_farm_manager.farm_slot[_slot, 3] -= _farm_manager.farm_slot[_slot, 4];
									_farm_manager.farm_slot[_slot, 4] *= 2;
									_farm_manager.farm_slot[_slot, 7] += 1;
								}
								_farm_manager.farm_slot[_slot, 5] -= _endurance
			
								if (_farm_manager.farm_slot[_slot, 7] == 3)
								{
									_farm_manager.farm_slot[_slot, 4] = 999;
								}
			
								scr_active_hand_discard_card(activated_card_slot);
								audio_play_sound(snd_card_success, 800, false, global.game_effects_volume * 1);
								scr_active_hand_update();
		
								return true;
								
							}
							else
							{
								scr_new_popup("Plant is already fully grown");
								audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
								return false;
							}
						}
						else
						{
							scr_new_popup("Not enough endurance");
							audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
							return false;
						}
					}
					else
					{
						scr_new_popup("Too many same plants");
						audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
						return false;
					}
				}
				else
				{
					scr_new_popup("There is no plant here");
					audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
					return false;
				}
			}
			else
			{
				scr_new_popup("Not near a farm.");
				audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
				return false;
			}
			break;
		
		case "Random Growth and Nutrients Increase":
		
			var _slot = irandom_range(1, 12);
			var _increase_amount = _param;
			_increase_amount = scr_apply_buff(_increase_amount, 1);
			_endurance = scr_apply_buff(_endurance, 3);
			
			var _empty_field = true;
			for (var _i = 1; _i <= 12; _i++)
			{
				if (_farm_manager.farm_slot[_i, 0] > 0)
				{
					_empty_field = false;
				}
			}
			
			if (!_empty_field)
			{
				while (_farm_manager.farm_slot[_slot, 0] != 0)
				{
					var _slot = irandom_range(1, 12);
				}
				
				var _temp = _farm_manager.farm_slot[_slot, 1] + _increase_amount;
				if (_temp > _farm_manager.farm_slot[_slot, 2])
				{
					_temp = _farm_manager.farm_slot[_slot, 2];
				}
				_farm_manager.farm_slot[_slot, 1] = _temp;
				
				_farm_manager.farm_slot[_slot, 3] += _increase_amount;
				if (_farm_manager.farm_slot[_slot, 3] >= _farm_manager.farm_slot[_slot, 4])
				{
					_farm_manager.farm_slot[_slot, 3] -= _farm_manager.farm_slot[_slot, 4];
					_farm_manager.farm_slot[_slot, 4] *= 2;
					_farm_manager.farm_slot[_slot, 7] += 1;
				}
			
				if (_farm_manager.farm_slot[_slot, 7] == 3)
				{
					_farm_manager.farm_slot[_slot, 4] = 999;
				}
			
				scr_active_hand_discard_card(activated_card_slot);
				audio_play_sound(snd_card_success, 800, false, global.game_effects_volume * 1);
				scr_active_hand_update();
		
				return true;
				
			}
			else
			{
				scr_new_popup("Field is empty.");
				audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
			}
			
			break;

		case "All Unique Nutrients Increase":
		
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				var _increase_amount = _param;
				_increase_amount = scr_apply_buff(_increase_amount, 2);
				
				var _plant_count = 0;
				for (var _i = 1; _i <= 12; _i++)
				{
					if (_farm_manager.farm_slot[_i, 0] > 0)
					{
						_plant_count++;
					}
				}
				
				if (_plant_count != 12)
				{
					var _plant_type = [_farm_manager.farm_slot[1, 0]];
					var _plant_type_count = 1;
					var _all_unique = true;
					
					for (var _i = 2; _i <= 12; _i++)
					{
						for (var _j = 0; _j < _plant_type_count; _j++)
						{
							if (_farm_manager.farm_slot[_i, 0] == _plant_type[_j])
							{
								_all_unique = false;
								break;
							}
							else
							{
								_plant_type[_plant_type_count] = _farm_manager.farm_slot[_i, 0];
								_plant_type_count++;
							}
						}
					}
					
					if (_all_unique)
					{
						for (var _i = 1; _i <= 12; _i++)
						{
							_farm_manager.farm_slot[_i, 3] += _increase_amount;
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
						scr_active_hand_discard_card(activated_card_slot);
						audio_play_sound(snd_card_success, 800, false, global.game_effects_volume * 1);
						scr_active_hand_update();
		
						return true;
					}
					else
					{
						scr_new_popup("Some plants are the same");
						audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
						return false;
					}
				}
				else
				{
					scr_new_popup("Not a full field");
					audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
					return false;
				}
			}
			else
			{
				scr_new_popup("Not near a farm.");
				audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
				return false;
			}
			break;

		#endregion
		
		case "Plant":
			if (object_get_name(obj_player.activate.object_index) == "obj_farm")
			{
				scr_farm_slot_add_crop(obj_player.activate.entity_activate_argument[0], _param);
			}
			else
			{
				scr_new_popup("Not a farm");
				audio_play_sound(snd_card_fail, 800, false, global.game_effects_volume * 1);
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
			
		case "X1":
			return 16;
			
		case "X2":
			return 17;
			
		case "X3":
			return 18;
			
		case "X4":
			return 19;
			
		case "X5":
			return 20;
			
		case "X6":
			return 21;
			
		case "X7":
			return 22;
			
		case "X8":
			return 23;
			
		case "X9":
			return 24;
			
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
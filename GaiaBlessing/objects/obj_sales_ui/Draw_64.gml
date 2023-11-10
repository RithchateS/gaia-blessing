#region Banner and Layout

draw_set_color(c_black);
draw_set_alpha(0.75);
draw_rectangle(0, 0, NATIVE_GUI_RESOLUTION_WIDTH, NATIVE_GUI_RESOLUTION_HEIGHT, false);
	
draw_set_alpha(1.0);
draw_sprite_stretched(spr_ui_option_background, 1, 5, 5, ui_tab_name_bg_width, ui_tab_height); // UI Tab Name BG
draw_sprite_stretched(spr_ui_option_background, 1, NATIVE_GUI_RESOLUTION_WIDTH - 72, 5, 67, ui_tab_height); // Back Button
draw_sprite_stretched(spr_ui_option_background, 1, -10, NATIVE_GUI_RESOLUTION_HEIGHT - ui_tab_height, NATIVE_GUI_RESOLUTION_WIDTH + 20, ui_tab_height + 2); // Bottom Bar

draw_sprite_stretched(spr_ui_option_background, 1, 513, 66, 112, 256);

scr_text_setup(global.font_large, fa_center, fa_top, c_white);
draw_text(NATIVE_GUI_RESOLUTION_WIDTH - 38, 10, "Back");

draw_set_alpha(1.0);
scr_text_setup(global.font_large, fa_center, fa_top, c_white);
draw_text(5 + (ui_tab_name_bg_width / 2), 10, "Card Seller");

scr_text_setup(global.font_large, fa_left, fa_top, c_white);
draw_text(520, 72, "Selling...");

#endregion

switch (ui_tab)
{
	case 0:
		draw_sprite(spr_ui_deck_management_tab_1, 0, 15, 46);
		scr_text_setup(global.font_large, fa_center, fa_top, c_white);
		draw_text(73, 51, "Crops");
		break;

}

draw_sprite_stretched(spr_ui_option_background, 1, 536, 291, 66, ui_tab_height); // Clear Button
scr_text_setup(global.font_large, fa_center, fa_top, c_white);
draw_text(569, 296, "Sell");

for (var _i = 0; _i < 3; _i++)
{
	if (inventory_manager.item_inventory[_i + 101 + (card_start_row - 1)][0] != false)
	{
		var _sprite = asset_get_index("spr_card_" + string(_i + 101 + (card_start_row - 1)));
	}
	else
	{
		var _sprite = asset_get_index("spr_card_mystery");
	}
	
	for (var _j = 1; _j <= 4; _j++)
	{
		if (inventory_manager.item_inventory[_i + 101 + (card_start_row - 1)][_j] <= 0)
		{
			draw_sprite(_sprite, _j + 4 - 1, 28 + (CARD_WIDTH * 0.5) + (((_j - 1) % 4) * (CARD_WIDTH + 16)), 86 + CARD_HEIGHT + (_i * (CARD_HEIGHT + 16)));
		}
		else
		{
			draw_sprite(_sprite, _j - 1, 28 + (CARD_WIDTH * 0.5) + (((_j - 1) % 4) * (CARD_WIDTH + 16)), 86 + CARD_HEIGHT + (_i * (CARD_HEIGHT + 16)));
		}
		
		scr_text_setup(global.font_number_large, fa_left, fa_top, c_white);
	
		draw_text(28 + (CARD_WIDTH * 0.95) + (((_j - 1) % 4) * (CARD_WIDTH + 16)), 78 + CARD_HEIGHT + (_i * (CARD_HEIGHT + 16)), string(inventory_manager.item_inventory[_i + 101 + (card_start_row - 1)][_j]));
	}
	
	
}

for (var _i = 1; _i <= 3; _i++)
{
	if (card_start_row == _i)
	{
		draw_sprite(spr_ui_scroll_bar, 0, 484, 98 + (11 * (_i - 1)) + 83);
	}
	else
	{
		draw_sprite(spr_ui_scroll_bar, 1, 484, 98 + (11 * (_i - 1)) + 83);
	}
}

for (var _i = 0; _i < card_types_in_sales_count; _i++)
{	
	var _name = scr_card_name(card_types_in_sales[_i][0]);
	
	switch (card_types_in_sales[_i][1])
	{
		case 1:
			_name += "c";
			break;
		
		case 2:
			_name += "u";
			break;
			
		case 3:
			_name += "r";
			break;
			
		case 4:
			_name += "l";
			break;
			
		default:
			break;
	}
	scr_text_setup(global.font_capital, fa_left, fa_top, c_white);
	draw_text(521, 57 + 32 + (_i * 12), _name);
	scr_text_setup(global.font_capital, fa_right, fa_top, c_white);
	draw_text(618, 57 + 32 + (_i * 12), "x" + string(card_types_in_sales[_i][2]));
}

if (focused_card > 0)
{
	if (inventory_manager.item_inventory[focused_card][0] == true)
	{
		var _falvour_text = scr_card_flavor_text(focused_card);
	}
	else
	{
		var _falvour_text = "???";
	}
				
	scr_text_setup(global.font_large, fa_left, fa_top, c_white);
	draw_text(10, NATIVE_GUI_RESOLUTION_HEIGHT - ui_tab_height + 6, _falvour_text);
}
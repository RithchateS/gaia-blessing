if (booster_generated == false)
{
	if ((input_manager.mouse_y_position > NATIVE_GUI_RESOLUTION_HEIGHT / 2 - 78) && (input_manager.mouse_y_position < NATIVE_GUI_RESOLUTION_HEIGHT / 2))
	{
		if ((input_manager.mouse_x_position > NATIVE_RESOLUTION_WIDTH * 0.25 - 58) && (input_manager.mouse_x_position < NATIVE_RESOLUTION_WIDTH * 0.25 + 58))
		{
			focused_booster = 1;
		}
		else if ((input_manager.mouse_x_position > NATIVE_RESOLUTION_WIDTH * 0.5 - 58) && (input_manager.mouse_x_position < NATIVE_RESOLUTION_WIDTH * 0.5 + 58))
		{
			focused_booster = 2;
		}
		else if ((input_manager.mouse_x_position > NATIVE_RESOLUTION_WIDTH * 0.75 - 58) && (input_manager.mouse_x_position < NATIVE_RESOLUTION_WIDTH * 0.75 + 58))
		{
			focused_booster = 3;
		}
		else
		{
			focused_booster = -1;
		}
	}
	else
	{
		focused_booster = -1;
	}

	if (input_manager.mouse_left_pressed && (focused_booster != -1))
	{
		if (global.player_coin >= 5) && (focused_booster == 1)
		{
			global.player_coin -= 10;
			generated_cards = scr_booster_generate(focused_booster);
			card1_sprite = asset_get_index("spr_card_" + string(generated_cards[0]));
			card2_sprite = asset_get_index("spr_card_" + string(generated_cards[1]));
			card3_sprite = asset_get_index("spr_card_" + string(generated_cards[2]));
			scr_inventory_add(generated_cards[0], 1);
			scr_inventory_add(generated_cards[1], 1);
			scr_inventory_add(generated_cards[2], 1);
			booster_generated = true;
			booster_animation_ended = false;
			frame_since_booster_ended = 0;
			card1_lerp_progress = 0;
			card2_lerp_progress = 0;
			card3_lerp_progress = 0;
			card1_x1 = NATIVE_GUI_RESOLUTION_WIDTH / 4; 
			card1_y1 = floor(NATIVE_GUI_RESOLUTION_HEIGHT / 3);
			card1_x2 = NATIVE_GUI_RESOLUTION_WIDTH / 4; 
			card1_y2 = floor(NATIVE_GUI_RESOLUTION_HEIGHT / 3);

			card2_x1 = NATIVE_GUI_RESOLUTION_WIDTH / 2; 
			card2_y1 = floor(NATIVE_GUI_RESOLUTION_HEIGHT / 3);
			card2_x2 = NATIVE_GUI_RESOLUTION_WIDTH / 2; 
			card2_y2 = floor(NATIVE_GUI_RESOLUTION_HEIGHT / 3);

			card3_x1 = 3 * NATIVE_GUI_RESOLUTION_WIDTH / 4; 
			card3_y1 = floor(NATIVE_GUI_RESOLUTION_HEIGHT / 3);
			card3_x2 = 3 * NATIVE_GUI_RESOLUTION_WIDTH / 4; 
			card3_y2 = floor(NATIVE_GUI_RESOLUTION_HEIGHT / 3);
		}
		else if (global.player_coin >= 10) && (focused_booster == 2)
		{
			global.player_coin -= 10;
			generated_cards = scr_booster_generate(focused_booster);
			card1_sprite = asset_get_index("spr_card_" + string(generated_cards[0]));
			card2_sprite = asset_get_index("spr_card_" + string(generated_cards[1]));
			card3_sprite = asset_get_index("spr_card_" + string(generated_cards[2]));
			scr_inventory_add(generated_cards[0], 1);
			scr_inventory_add(generated_cards[1], 1);
			scr_inventory_add(generated_cards[2], 1);
			booster_generated = true;
			booster_animation_ended = false;
			frame_since_booster_ended = 0;
			card1_lerp_progress = 0;
			card2_lerp_progress = 0;
			card3_lerp_progress = 0;
			card1_x1 = NATIVE_GUI_RESOLUTION_WIDTH / 4; 
			card1_y1 = floor(NATIVE_GUI_RESOLUTION_HEIGHT / 3);
			card1_x2 = NATIVE_GUI_RESOLUTION_WIDTH / 4; 
			card1_y2 = floor(NATIVE_GUI_RESOLUTION_HEIGHT / 3);

			card2_x1 = NATIVE_GUI_RESOLUTION_WIDTH / 2; 
			card2_y1 = floor(NATIVE_GUI_RESOLUTION_HEIGHT / 3);
			card2_x2 = NATIVE_GUI_RESOLUTION_WIDTH / 2; 
			card2_y2 = floor(NATIVE_GUI_RESOLUTION_HEIGHT / 3);

			card3_x1 = 3 * NATIVE_GUI_RESOLUTION_WIDTH / 4; 
			card3_y1 = floor(NATIVE_GUI_RESOLUTION_HEIGHT / 3);
			card3_x2 = 3 * NATIVE_GUI_RESOLUTION_WIDTH / 4; 
			card3_y2 = floor(NATIVE_GUI_RESOLUTION_HEIGHT / 3);
		}
		else
		{
			show_debug_message("Not enough money.")
		}
	}

	if (input_manager.key_back)
	{
		instance_destroy();
	}
}
else
{
	frame_since_booster_ended++;
	card1_lerp_progress += (1 - card1_lerp_progress) / 50;
		
	if (frame_since_booster_ended > 10)
	{
		card2_lerp_progress += (1 - card2_lerp_progress) / 50;
	}
		
	if (frame_since_booster_ended > 20)
	{
		card3_lerp_progress += (1 - card3_lerp_progress) / 50;
	}
	
	card1_x1 = lerp(card1_x1, card1_x1_destination, card1_lerp_progress);
	card1_x2 = lerp(card1_x2, card1_x2_destination, card1_lerp_progress);
	card1_y1 = lerp(card1_y1, card1_y1_destination, card1_lerp_progress);
	card1_y2 = lerp(card1_y2, card1_y2_destination, card1_lerp_progress);
	
	card2_x1 = lerp(card2_x1, card2_x1_destination, card2_lerp_progress);
	card2_x2 = lerp(card2_x2, card2_x2_destination, card2_lerp_progress);
	card2_y1 = lerp(card2_y1, card2_y1_destination, card2_lerp_progress);
	card2_y2 = lerp(card2_y2, card2_y2_destination, card2_lerp_progress);
	
	card3_x1 = lerp(card3_x1, card3_x1_destination, card3_lerp_progress);
	card3_x2 = lerp(card3_x2, card3_x2_destination, card3_lerp_progress);
	card3_y1 = lerp(card3_y1, card3_y1_destination, card3_lerp_progress);
	card3_y2 = lerp(card3_y2, card3_y2_destination, card3_lerp_progress);
	
	if (card1_x1 < card1_x1_destination + 10 && !booster_animation_ended)
	{
		booster_animation_ended = true;
		frame_since_booster_ended = 0;
	}
	
	if (booster_animation_ended && (input_manager.mouse_left_pressed || input_manager.key_back))
	{
		booster_generated = false;
	}
}

if ((input_manager.mouse_x_position >= NATIVE_GUI_RESOLUTION_WIDTH - 72) && (input_manager.mouse_x_position <= NATIVE_GUI_RESOLUTION_WIDTH - 5))
{
	if ((input_manager.mouse_y_position >= 5) && (input_manager.mouse_y_position <= 5 + ui_tab_height))
	{
		if (input_manager.mouse_left_pressed)
		{
			instance_destroy();
		}
	}
}
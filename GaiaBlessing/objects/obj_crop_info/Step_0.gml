lerp_progress += (1 - lerp_progress) / 50;

var _farm_manager = global.instance_manager_farm

if (_farm_manager.farm_slot[crop_number][0] != -1)
{
	crop_name = scr_crop_info(_farm_manager.farm_slot[crop_number][0])[0];
	crop_growth_destination = _farm_manager.farm_slot[crop_number][1];
	crop_max_growth = _farm_manager.farm_slot[crop_number][2];
	crop_nutrient_destination = _farm_manager.farm_slot[crop_number][3];
	crop_max_nutrient = _farm_manager.farm_slot[crop_number][4];
	crop_endurance_destination = _farm_manager.farm_slot[crop_number][5];
	crop_max_endurance = _farm_manager.farm_slot[crop_number][6];
	crop_rank = _farm_manager.farm_slot[crop_number][7];
}
else
{
	crop_name = "Empty Plot";
	crop_growth = -1;
	crop_max_growth = -1;
	crop_growth_destination = -1;
	crop_nutrient = -1;
	crop_max_nutrient = -1;
	crop_nutrient_destination = -1;
	crop_endurance = -1;
	crop_max_endurance = -1;
	crop_endurance_destination = -1;
	crop_rank = -1;
}

x1 = lerp(x1, x1_destination, lerp_progress);
x2 = lerp(x2, x2_destination, lerp_progress);
y1 = lerp(y1, y1_destination, lerp_progress);
y2 = lerp(y2, y2_destination, lerp_progress);

if (lerp_progress > 0.26) 
{
	box_finished = true; 
}
else
{
	box_finished = false; 
}

if (!start_lerp)
{
	if ((crop_endurance != crop_endurance_destination) || (crop_growth != crop_growth_destination) || (crop_nutrient != crop_nutrient_destination))
	{
		start_lerp = true;
		crop_lerp_progress = 0;
		crop_growth_start = crop_growth;
		crop_nutrient_start = crop_nutrient;
		crop_endurance_start = crop_endurance;
	}	
}

if (start_lerp)
{
	crop_lerp_progress = scr_range(crop_lerp_progress + crop_lerp_speed, 0, 1);
}

crop_growth = floor(lerp(crop_growth_start, crop_growth_destination, crop_lerp_progress));
crop_nutrient = floor(lerp(crop_nutrient_start, crop_nutrient_destination, crop_lerp_progress));
crop_endurance = floor(lerp(crop_endurance_start, crop_endurance_destination, crop_lerp_progress));

if (crop_endurance == crop_endurance_destination) && (crop_growth == crop_growth_destination) && (crop_nutrient == crop_nutrient_destination)
{
	start_lerp = false;
}


var _input_manager = global.instance_manager_input;

if ((abs(obj_player.x - origin_x) > 32) || (abs(obj_player.y - origin_y) > 32))
{
	instance_destroy();
	/*
	with (obj_player)
	{
		state = last_state;
		alarm[0] = 10;
		text_cooldown = true;
	}
	*/
}
var _crop_number = entity_activate_argument[0];

if (global.instance_manager_farm.farm_slot[_crop_number, 0] != -1)
{
	sprite_index = asset_get_index("spr_farm_crop_" + string(global.instance_manager_farm.farm_slot[_crop_number, 0]));
	image_speed = 0;
	image_index = floor(global.instance_manager_farm.farm_slot[_crop_number, 1] * 3 / global.instance_manager_farm.farm_slot[_crop_number, 2]);
}
else
{
	sprite_index = spr_farm_empty;
	image_speed = 0;
}



// Inherit the parent event
event_inherited();
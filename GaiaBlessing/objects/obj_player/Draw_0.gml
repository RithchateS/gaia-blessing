draw_sprite(spr_player_shadow, 0, floor(x), floor(y));

draw_sprite_ext(
	sprite_index,
	image_index,
	floor(x),
	floor(y),
	image_xscale,
	image_yscale,
	image_angle,
	image_blend,
	image_alpha
);

if (near_interactable && !instance_exists(obj_crop_info)) {
	draw_sprite(spr_gui_interactable_icon, 0, activate.x, activate.y - sprite_get_height(activate.sprite_index));
}

/*
if (activate > -1)
{
	draw_text(10, 50, object_get_name(activate.object_index));
}
*/

// draw_sprite(spr_card_collision_check, 0, x + lengthdir_x(16, face_direction), y + lengthdir_y(16, face_direction));
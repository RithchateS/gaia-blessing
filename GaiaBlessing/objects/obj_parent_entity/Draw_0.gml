if (entity_shadow) draw_sprite(spr_player_shadow, 0, floor(x), floor(y));

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
)
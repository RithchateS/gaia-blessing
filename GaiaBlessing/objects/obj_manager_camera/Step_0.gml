/// @description Update Camera

// Update Destination
if (instance_exists(follow))
{
	destination_x = follow.x;
	destination_y = follow.y;
}

// Update Position
x += (destination_x - x) / follow_speed;
y += (destination_y - y) / follow_speed;

// Keep camera center inside the room
x = clamp(x, view_width_half, room_width - view_width_half);
y = clamp(y, view_height_half, room_height - view_height_half);

// Screenshake
x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);

shake_remain = max(0, shake_remain - ((1 / shake_duration) * shake_magnitude));

camera_set_view_pos(camera, x - view_width_half, y - view_height_half);
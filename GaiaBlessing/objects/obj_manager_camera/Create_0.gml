/// @description Camera Set Up
camera = view_camera[0];
follow = obj_player;
follow_speed = 15;	// Speed of the camera follow, lower means higher
view_width_half = camera_get_view_width(camera) * 0.5;
view_height_half = camera_get_view_height(camera) * 0.5;
destination_x = xstart;
destination_y = ystart;

shake_duration = 0;
shake_magnitude = 0;
shake_remain = 0;
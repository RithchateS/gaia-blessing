origin_x = obj_player.activate.x;
origin_y = obj_player.activate.y;

x1 = obj_player.activate.x; 
y1 = obj_player.activate.y - 64;
x2 = obj_player.activate.x;
y2 = obj_player.activate.y - 64;

x1_destination = obj_player.activate.x - 59;
x2_destination = obj_player.activate.x + 59;
y1_destination = obj_player.activate.y - 96;
y2_destination = obj_player.activate.y - 34;

lerp_progress = 0;
box_finished = false;

crop_number = obj_player.activate.entity_activate_argument[0];

crop_name = -1;
crop_growth = -1;
crop_growth_destination = -1;
crop_max_growth = -1;
crop_nutrient = -1;
crop_nutrient_destination = -1;
crop_max_nutrient = -1;
crop_endurance = -1;
crop_endurance_destination = -1;
crop_max_endurance = -1;
crop_rank = -1;

crop_lerp_speed = 0.05;
crop_lerp_progress = 0;
start_lerp = false;
crop_growth_start = -1;
crop_nutrient_start = -1;
crop_endurance_start = -1;

depth = -9999;
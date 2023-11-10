key_any = keyboard_check_pressed(vk_anykey);

key_back = keyboard_check_pressed(vk_escape);

key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));
key_activate = keyboard_check_pressed(vk_space);
key_attack = keyboard_check_pressed(vk_shift);
key_item = keyboard_check_pressed(vk_control);
key_tab = keyboard_check_pressed(vk_tab);

key_card[0] = keyboard_check_pressed(ord("1"));
key_card[1] = keyboard_check_pressed(ord("2"));
key_card[2] = keyboard_check_pressed(ord("3"));
key_card[3] = keyboard_check_pressed(ord("4"));
key_card[4] = keyboard_check_pressed(ord("5"));

input_any_card = key_card[0] || key_card[1] || key_card[2] || key_card[3] || key_card[4];

input_direction = point_direction(0, 0, key_right - key_left, key_down - key_up);
input_magnitude = (key_right - key_left != 0) || (key_down - key_up != 0);

input_option_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
input_option_down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
input_option_left = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
input_option_right = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
input_option_change_vertical = input_option_down - input_option_up;
input_option_change_horizontal = input_option_right - input_option_left;

mouse_x_position = device_mouse_x_to_gui(0);
mouse_y_position = device_mouse_y_to_gui(0);
mouse_x_position_previous = device_mouse_x_to_gui(0);
mouse_y_position_previous = device_mouse_y_to_gui(0);

mouse_left_pressed = mouse_check_button_pressed(mb_left);
mouse_left_released = mouse_check_button_released(mb_left);

mouse_right_pressed = mouse_check_button_pressed(mb_right);

mouse_moved = false;
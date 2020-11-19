/// @description Insert description here
// You can write your code in this editor

h_input = keyboard_check(vk_right) - keyboard_check(vk_left);
v_input = keyboard_check(vk_down) - keyboard_check(vk_up);

if (current_dash_cooldown > 0) {
	current_dash_cooldown -= 1;	
}

if (current_attack_cooldown > 0) {
	current_attack_cooldown -= 1;	
}

if (keyboard_check_pressed(vk_control) and current_dash_cooldown <= 0) {
	is_dashing = true;
	dash_angle = dir;
	spd = normal_spd * dash_distance;
	alarm[0] = dash_duration; // duration of dash
	current_dash_cooldown = dash_cooldown;
}

if (is_dashing) {
	x += lengthdir_x(spd, dash_angle);
	y += lengthdir_y(spd, dash_angle);
}

else if (h_input != 0 or v_input != 0) {
	dir = point_direction (0,0, h_input, v_input);
	move_x = lengthdir_x(spd, dir);
	move_y = lengthdir_y(spd, dir);
	
	x += move_x;
	y += move_y;
	
	// Set Sprite
	switch (dir) {
		case 0: sprite_index = spr_r; break;
		case 45: sprite_index = spr_ur; break;
		case 90: sprite_index = spr_u; break;
		case 135: sprite_index = spr_ul; break;
		case 180: sprite_index = spr_l; break;
		case 225: sprite_index = spr_dl; break;
		case 270: sprite_index = spr_d; break;
		case 315: sprite_index = spr_dr; break;
	}
} 
else {
	image_index = 0;	
}




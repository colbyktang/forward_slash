/// @description Insert description here
// You can write your code in this editor

global.h_input = keyboard_check(vk_right) - keyboard_check(vk_left);
global.v_input = keyboard_check(vk_down) - keyboard_check(vk_up);
attack_input = keyboard_check_pressed(vk_space);
dash_input = keyboard_check_pressed(vk_control);
dash_timer --;

input_magnitude = global.h_input != 0 || global.v_input != 0;
if (input_magnitude > 0) {
	input_direction = point_direction(0,0,global.h_input, global.v_input);
}

if (!is_dashing) {
	h_speed = lengthdir_x(input_magnitude * spd, input_direction);
	v_speed = lengthdir_y(input_magnitude * spd, input_direction);
	
}

if (dash_timer <= 0) {
	if (is_dashing)	dash_timer = dash_time;
	else dash_timer = walk_time;
	part_particles_create (o_dash_particle.particle_system, x, y, o_dash_particle.particle_type_dash_fade, 1);
}

if (current_dash_cooldown > 0) {
	current_dash_cooldown -= 1;	
}

if (dash_input and current_dash_cooldown <= 0) {
	is_dashing = true;
	dash_angle = input_direction;
	alarm[0] = dash_duration; // duration of dash
	current_dash_cooldown = dash_cooldown;
	audio_play_sound(snd_dash, 25, false);
}

is_colliding = PlayerCollision();

if (current_attack_cooldown > 0) {
	current_attack_cooldown -= 1;	
}

if (attack_input and current_attack_cooldown <= 0) {
	audio_sound_pitch(snd_swing, random_range(0.9, 1.1));
	audio_play_sound(snd_swing, 50, false);
	var inst = instance_create_layer(x + lengthdir_x(swing_distance, input_direction), y + lengthdir_y(swing_distance, input_direction), "Instances", o_swing);
	inst.image_angle = input_direction;
	current_attack_cooldown = attack_cooldown;
}

/*
if (h_input != 0 or v_input != 0) {
	dir = point_direction (0,0, h_input, v_input);
	
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
*/

if (input_magnitude != 0) {
	if (input_direction > 90 and input_direction < 270) {
		image_xscale = -1;	
	}
	else {
		image_xscale = 1;	
	}
}

if (hp <= 0) {
	instance_destroy(o_hudswing);
	instance_destroy(self);
	with (o_game) event_user(1);
}

if (flash_alpha > 0) {
	flash_alpha -= 0.1;
}
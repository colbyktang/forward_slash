/// @description Insert description here
// You can write your code in this editor

if (current_attack_cooldown <= 0) {
	var inst = instance_create_layer(x + lengthdir_x(swing_distance, dir), y + lengthdir_y(swing_distance, dir), "Instances", o_swing);
	inst.image_angle = dir;
	current_attack_cooldown = attack_cooldown;
}
/// @description Insert description here
// You can write your code in this editor

hp = 100;
dash_cooldown = 50;
attack_cooldown = 30;
current_dash_cooldown = 0;
current_attack_cooldown = 0;
dash_duration = 4;
dash_distance = 4;

normal_spd = 4;
spd = normal_spd;
dir = 0;
swing_distance = 1;
is_dashing = false;
dash_angle = 0;

image_speed = 0.4;
swing_hud = instance_create_layer(x + lengthdir_x(swing_distance, dir), y + lengthdir_y(swing_distance, dir), "Instances", o_hudswing);
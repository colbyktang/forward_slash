/// @description Insert description here
// You can write your code in this editor

collision_map = layer_tilemap_get_id (layer_get_id("Col"));

// Properties
hp_max = 100;
hp = hp_max;

// Movement
normal_spd = 4;
spd = normal_spd;
input_direction = 0;
h_speed = 0;
v_speed = 0;
is_colliding = false;

// Dash
dash_duration = 4;
dash_distance = 6;
is_dashing = false;
dash_angle = 0;
dash_cooldown = 35;
current_dash_cooldown = 0;

// Attack
attack_cooldown = 25;
current_attack_cooldown = 0;
swing_distance = 1;
num_of_bombs = 0;
num_of_bombs_limit = 1;

pre_bomb_hold_duration = 0;
pre_bomb_activate_duration = 20;

bomb_hold_duration = 0;
bomb_activate_duration = 40;
bomb_activated = false;

// Animation
image_speed = 0.4;

swing_hud = instance_create_layer(x + lengthdir_x(swing_distance, input_direction), y + lengthdir_y(swing_distance, input_direction), "Instances", o_hudswing);

flash_alpha = 0;
flash_color = c_red;

walk_time = 5;
dash_time = 0;
dash_timer = walk_time;

// Progress Bar
bar_width = 100;
bar_height = 12;
bar_x = x;
bar_y = y;

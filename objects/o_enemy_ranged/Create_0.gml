/// @description Insert description here
// You can write your code in this editor
collision_map = layer_tilemap_get_id (layer_get_id("Col"));

// Movement
input_magnitude = 0;
normal_spd = 1;
spd = normal_spd;
h_speed = 0;
v_speed = 0;
is_colliding = false;

image_speed = 1;

damage = 10;
damage_cooldown_limit = 30;
damage_cooldown = damage_cooldown_limit;
attack_cooldown = 20;
attack_walking_cooldown = 50;
attack_cooldown_timer = 0;

move_x = 0;
move_y = 0;

distance_to_player = point_distance(x, y, o_player.x, o_player.y);

if (instance_exists(o_game)) {
	global.monster_count += 1;
}
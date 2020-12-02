/// @description Insert description here
// You can write your code in this editor
image_speed = 1;

damage = 10;
damage_cooldown_limit = 30;
damage_cooldown = damage_cooldown_limit;

move_x = 0;
move_y = 0;

distance_to_player = point_distance(x, y, o_player.x, o_player.y);

global.monster_count += 1;
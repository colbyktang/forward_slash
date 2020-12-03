/// @description Insert description here
// You can write your code in this editor



if (instance_exists (o_player)) {
	distance_to_player = point_distance(x, y, o_player.x, o_player.y);
	direction = point_direction (x, y, o_player.x, o_player.y);
}
else {
	distance_to_player = 0;
}

if (direction > 90 and direction < 270) {
	image_xscale = -1;	
}
else {
	image_xscale = 1;	
}

if (distance_to_player < 250 and distance_to_player > 20) {
	input_magnitude = 1;
}
else {
	input_magnitude = 0;	
}

h_speed = lengthdir_x(input_magnitude * spd, direction);
v_speed = lengthdir_y(input_magnitude * spd, direction);

EnemyCollision();

if (damage_cooldown != damage_cooldown_limit) {
	damage_cooldown += 1;	
}
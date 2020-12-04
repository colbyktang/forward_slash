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

if (attack_cooldown_timer > 0) {
	attack_cooldown_timer--;	
}

if (distance_to_player < 300) {
	if (attack_cooldown_timer <= 0) {
		if (distance_to_player < 130) {
			attack_cooldown_timer = attack_walking_cooldown;
		}
		else {
			attack_cooldown_timer = attack_cooldown;
		}
		audio_play_sound(snd_enemy_fire, 10, false);
		var bullet = instance_create_layer(x + lengthdir_x(1, direction), y + lengthdir_y(1, direction), "Instances", o_bullet);
		bullet.image_angle = direction;
		bullet.direction = direction;
	}
}

if (distance_to_player < 130) {
	sprite_index = totoro2_walk;
	input_magnitude = -1;
}
else {
	sprite_index = totoro2_idle;
	input_magnitude = 0;	
}

h_speed = lengthdir_x(input_magnitude * spd, direction);
v_speed = lengthdir_y(input_magnitude * spd, direction);

EnemyCollision();

if (damage_cooldown != damage_cooldown_limit) {
	damage_cooldown += 1;	
}
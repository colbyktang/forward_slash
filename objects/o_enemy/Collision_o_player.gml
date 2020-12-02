/// @description Insert description here
// You can write your code in this editor

if (damage_cooldown == damage_cooldown_limit) {
	var enemy_damage = damage;
	with (o_player) {
		hp -= enemy_damage;
		event_user(0); // Trigger hit event
	}
	damage_cooldown = 0;
	
}
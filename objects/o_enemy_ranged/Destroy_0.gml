/// @description Insert description here
// You can write your code in this editor

audio_play_sound(snd_enemy_death, 10, false);
if (instance_exists(o_game)) {
	global.kills += 1;
}
effect_create_above(ef_explosion, x, y, 0.5, c_red);
instance_create_layer(x,y, "Floor", o_blood);
with (o_game) {
	event_user(0); // Call enemy death event	
}
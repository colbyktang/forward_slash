/// @description Insert description here
// You can write your code in this editor

global.kills += 1;
effect_create_above(ef_explosion, x, y, 1, c_red);
with (o_game) {
	event_user(0); // Call enemy death event	
}
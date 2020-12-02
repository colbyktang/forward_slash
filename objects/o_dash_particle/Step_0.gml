/// @description Insert description here
// You can write your code in this editor
if (global.h_input != 0) {
	part_type_scale(particle_type_dash_fade, global.h_input, 1);
}

if (instance_exists (o_player) and o_player.is_dashing) {
	part_type_life (particle_type_dash_fade, 25,25);
	part_type_alpha3 (particle_type_dash_fade, 0.8, 0.6, 0.3);
}
else {
	part_type_life (particle_type_dash_fade, 10,10);
	part_type_alpha3 (particle_type_dash_fade, 0.5, 0.2, 0.1);
}
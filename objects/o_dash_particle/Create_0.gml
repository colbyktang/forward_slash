/// @description Insert description here
// You can write your code in this editor

particle_system = part_system_create();

particle_type_dash_fade = part_type_create();

part_type_sprite (particle_type_dash_fade, spr_character, 0, 0, 1);
part_type_scale(particle_type_dash_fade, 1, 1);
part_type_size (particle_type_dash_fade, 1, 1, 0, 0);
part_type_life (particle_type_dash_fade, 10,10);
part_type_alpha3 (particle_type_dash_fade, 0.8, 0.5, 0.3);
part_type_color1(particle_type_dash_fade, c_white);
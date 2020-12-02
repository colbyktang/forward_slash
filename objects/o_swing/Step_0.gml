/// @description Insert description here
// You can write your code in this editor

image_xscale = lerp(image_xscale, 1, 0.5);
image_alpha = lerp(image_alpha, 1, 0.25);

if (instance_exists(o_player)) {
	x = lerp(x, x + lengthdir_x(5 + (abs(global.h_input) * o_player.spd), image_angle), 0.7);
	y = lerp(y, y + lengthdir_y(5 + (abs(global.v_input) * o_player.spd), image_angle), 0.7);
}
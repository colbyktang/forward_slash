/// @description Insert description here
// You can write your code in this editor

image_xscale = lerp(image_xscale, 1, 0.5);
image_alpha = lerp(image_alpha, 1, 0.25);

x = lerp(x, x + lengthdir_x(5 + (abs(o_player.h_input) * o_player.spd), image_angle), 0.7);
y = lerp(y, y + lengthdir_y(5 + (abs(o_player.v_input) * o_player.spd), image_angle), 0.7);
/// @description Insert description here
// You can write your code in this editor

x = o_player.x + lengthdir_x(o_player.swing_distance + 15, o_player.input_direction);
y = (o_player.y - (o_player.sprite_height/2)) + lengthdir_y(o_player.swing_distance + 15, o_player.input_direction);
image_angle = o_player.input_direction;
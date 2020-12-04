/// @description Insert description here
// You can write your code in this editor

var h_speed = lengthdir_x (speed, direction);
var v_speed = lengthdir_y (speed, direction);

if (tilemap_get_at_pixel (collision_map, x + h_speed, y + v_speed)) {
	instance_destroy(self);
}

x += h_speed;
y += v_speed;


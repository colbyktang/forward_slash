/// @description Insert description here
// You can write your code in this editor

if (is_laser_on) {
	if (laser_beam == undefined) {
		laser_beam = instance_create_layer(x + lengthdir_x(width, image_angle), y + lengthdir_y(height, image_angle), "Instances", o_laserbeam);
		//laser_beam.l_distance = l_distance;
		laser_beam.image_angle = image_angle;
		laser_beam.image_xscale = (l_distance * TILE_SIZE) - width;
		laser_beam.image_yscale = 1;
	}
}
else {
	if (laser_beam != undefined) {
		instance_destroy (laser_beam);
	}
}
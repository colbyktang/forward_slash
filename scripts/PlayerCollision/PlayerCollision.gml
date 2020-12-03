// parameters are the collision box dimensions
function PlayerCollision(){
	var bb_left = 16;
	var bb_right = 16;
	var bb_top = 16;
	var bb_bottom = 0;
	var h_collision = false;
	var v_collision = false;
	
	if (is_dashing) {
		h_speed = lengthdir_x(spd * dash_distance, dash_angle);
		v_speed = lengthdir_y(spd * dash_distance, dash_angle);
	}

	// Horizontal Tiles
	var bbox_side = x + bb_right;
	if (sign(h_speed) == -1) bbox_side = x - bb_left;
	if (tilemap_get_at_pixel (collision_map, bbox_side + h_speed, y)) {
		h_speed = 0;
		h_collision = true;
	}
	
	/*
	if (tilemap_get_at_pixel (collision_map, x + h_speed, y)) {
		x-= x mod TILE_SIZE;
		if (sign(h_speed) == 1) x += TILE_SIZE - 1;
		h_speed = 0;
		collision = true;
	}
	*/

	// Vertical Tiles
	var bbox_height = y + bb_bottom;
	if (sign(v_speed) == -1) bbox_height = y - bb_top;
	if (tilemap_get_at_pixel (collision_map, x, bbox_height + v_speed)) {
		v_speed = 0;
		v_collision = true;
	}

	/*
	if (tilemap_get_at_pixel (collision_map, x, y + v_speed)) {
		y -= y mod TILE_SIZE;
		if (sign (v_speed) == 1) y += (TILE_SIZE - 1);
		v_speed = 0;
		collision = true;
	}
	*/
	
	// Horizontal Move Commit
	x += h_speed;
	
	// Vertical Move Commit
	y += v_speed;
	
	
	return h_collision or v_collision;
}
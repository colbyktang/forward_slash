/// @description Insert description here
// You can write your code in this editor

if (!float_down_state) {
	y += 1;
	if (y >= new_y) {
		float_down_state = true;
	}
}
else {
	y -= 1;
	if (y <= original_y) {
		float_down_state = false;
	}
}

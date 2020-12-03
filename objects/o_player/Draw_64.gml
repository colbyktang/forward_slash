/// @description Insert description here
// You can write your code in this editor

/*
draw_set_halign(fa_left);
draw_text(x, y - 60, "H: " + string(h_speed));
draw_text(x, y - 40, "V: " + string(v_speed));
*/

draw_sprite_stretched (s_health_bar_player, 0, bar_x, bar_y, min((hp/hp_max) * bar_width, bar_width), bar_height);
draw_sprite(s_health_bar_border, 0, bar_x, bar_y);

if (bomb_hold_input and bomb_hold_duration and num_of_bombs > 0) {
	draw_sprite_stretched (s_health_bar, 0, bar_x, bar_y + 32, min ((bomb_hold_duration/bomb_activate_duration) * bar_width, bar_width), bar_height);
	draw_sprite(s_health_bar_border, 0, bar_x, bar_y + 32);
}

for (i = 0; i < num_of_bombs; i += 1) {
	draw_sprite(spr_hud_bomb, 0, 40 + (72 * i), window_get_height() - 64);
}
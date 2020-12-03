/// @description Insert description here
// You can write your code in this editor

draw_self();
if (is_player_on) {
	draw_sprite_stretched (s_health_bar_player, 0, bar_x, bar_y, min((warp_progress/warp_goal) * bar_width, bar_width), bar_height);
	draw_sprite(s_health_bar_border, 0, bar_x, bar_y);
}
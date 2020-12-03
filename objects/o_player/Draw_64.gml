/// @description Insert description here
// You can write your code in this editor

/*
draw_set_halign(fa_left);
draw_text(x, y - 60, "H: " + string(h_speed));
draw_text(x, y - 40, "V: " + string(v_speed));
*/

draw_sprite_stretched (s_health_bar_player, 0, bar_x, bar_y, min((hp/hp_max) * bar_width, bar_width), bar_height);
draw_sprite(s_health_bar_border, 0, bar_x, bar_y);
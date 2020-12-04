/// @description Insert description here
// You can write your code in this editor

if (is_showing_achievement) {
	draw_sprite(spr_achieve, 0, ach_x, ach_y);
	draw_set_halign(fa_left);
	draw_set_font (font_menu);
	draw_text(ach_x - 100, ach_y - 30, achievement_text);
}
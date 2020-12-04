/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_left);
draw_set_font(font_default);
draw_text(0,8, "Press R to Restart Game");
draw_text(0,32, "Toros Deleted: " + string(global.kills));

if (global.isGameOver) {
	draw_set_halign(fa_center);
	draw_set_font(font_menu);
	draw_text(window_get_width() / 2, window_get_height() / 2, "You have wiped out all the Toros! Great job!");
	draw_set_font(font_default);
}

if (global.isPlayerDead) {
	draw_set_halign(fa_center);
	draw_set_font(font_menu);
	draw_text(window_get_width() / 2, window_get_height() / 2, "GAME OVER!");
	draw_set_font(font_default);
}
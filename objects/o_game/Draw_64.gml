/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_left);
draw_text(0,0, "Arrow keys to move");
draw_text(0,16, "Space to Attack, Left/Right Ctrl to Dash");
draw_text(0,32, "Press R to Restart Game");
draw_text(0,48, "Toros Deleted: " + string(global.kills));
if (instance_exists(o_player)) {
	draw_text(0,64, "Player Health: " + string(o_player.hp));
}
if (instance_exists(o_player)) {
	draw_text(0,72, "Player Bombs: " + string(o_player.num_of_bombs));
}


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
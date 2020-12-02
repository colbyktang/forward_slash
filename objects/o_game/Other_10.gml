/// @description Enemy Death Event
// You can write your code in this editor

show_debug_message ("o_game user event 0");
if (global.kills == global.monster_count) {
	global.isGameOver = true;
}
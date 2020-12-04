/// @description Insert description here
// You can write your code in this editor

global.h_input = keyboard_check(vk_right) - keyboard_check(vk_left);
global.v_input = keyboard_check(vk_down) - keyboard_check(vk_up);

if (global.kills == global.monster_count) {
	if (room == level_1) {
		if (instance_exists(o_achievements) and !o_achievements.achievement_toro1) {
			o_achievements.achievement_toro1 = true;
			with (o_achievements) {
				event_user(1);	
			}
		}
	}
	
	if (room == level_2) {
		if (instance_exists(o_achievements) and !o_achievements.achievement_toro2) {
			o_achievements.achievement_toro2 = true;
			with (o_achievements) {
				event_user(3);	
			}
		}
	}
}
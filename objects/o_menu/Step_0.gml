/// @description Insert description here
// You can write your code in this editor

keyboard_up = keyboard_check_pressed (vk_up);
keyboard_down = keyboard_check_pressed (vk_down);

if (keyboard_down) {
	audio_play_sound(snd_clock_tick, 100, false);
	menu_selection += 1;
	menu_selection = menu_selection mod array_length_1d(menu_buttons);
	show_debug_message(string(menu_selection));
}

else if (keyboard_up) {
	audio_play_sound(snd_clock_tick, 100, false);
	menu_selection -= 1;
	if (menu_selection < 0) menu_selection = array_length_1d(menu_buttons) - 1;
	show_debug_message(string(menu_selection));
}

arrow_select.x = menu_buttons[menu_selection].x - (menu_buttons[menu_selection].sprite_width / 2);
arrow_select.y = menu_buttons[menu_selection].y + y_padding;

if (keyboard_check_pressed(vk_enter)) {
	audio_play_sound(snd_button_click, 100, false);
	if (menu_selection == 0) {
		room_goto_next();
	}
	else if (menu_selection == 1) {
		game_end();	
	}
}
/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x,y, o_player)) {
	warp_progress += 1;
	image_index = 1;
	if (!is_player_on) {
		audio_sound_pitch(snd_positive, 1.5);
		audio_play_sound (snd_positive, 25, false);
		audio_sound_pitch(snd_positive, 1);
	}
	is_player_on = true;
	audio_sound_pitch(snd_square, warp_progress * 0.01);
	audio_play_sound(snd_square, 20, false);
}
else {
	audio_sound_pitch(snd_square, 1);
	warp_progress = 0;
	image_index = 0;
	if (is_player_on) {
		audio_sound_pitch(snd_positive, 0.8);
		audio_play_sound (snd_positive, 25, false);
		audio_sound_pitch(snd_positive, 1);
	}
	is_player_on = false;
}

if (warp_progress >= warp_goal) {
	audio_sound_pitch(snd_warp, 1.5);
	audio_play_sound(snd_warp, 50, false);
	
	// Achievement 1
	if (room == level_1) {
		if (instance_exists(o_achievements)) {
			o_achievements.achievement_lvl1 = true;
			with (o_achievements) {
				event_user(0);	
			}
		}
	}
	
	// Achievement 2
	if (room == level_2) {
		if (instance_exists(o_achievements)) {
			o_achievements.achievement_lvl2 = true;
			with (o_achievements) {
				event_user(2);	
			}
		}
	}
	
	if (room != room_last) {
		room_goto_next();
	}
	else {
		room_goto(menu);	
	}
}
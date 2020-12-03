/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x,y, o_player)) {
	warp_progress += 1;
	image_index = 1;
	if (!is_player_on) {
		audio_sound_pitch(snd_positive, 1.5);
		audio_play_sound (snd_positive, 25, false);
	}
	is_player_on = true;
	audio_sound_pitch(snd_square, warp_progress * 0.01);
	audio_play_sound(snd_square, 20, false);
}
else {
	warp_progress = 0;
	image_index = 0;
	if (is_player_on) {
		audio_sound_pitch(snd_positive, 0.8);
		audio_play_sound (snd_positive, 25, false);
	}
	is_player_on = false;
}

if (warp_progress >= warp_goal) {
	audio_sound_pitch(snd_warp, 1.5);
	audio_play_sound(snd_warp, 50, false);
	room_goto_next();
}
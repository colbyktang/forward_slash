/// @description Insert description here
// You can write your code in this editor


if (place_meeting(x,y, o_player)) {
	audio_sound_pitch (snd_positive, 2);
	audio_play_sound (snd_positive, 30, false);
	with (o_player) {
		num_of_bombs += 1;	
	}
	instance_destroy(self);
}
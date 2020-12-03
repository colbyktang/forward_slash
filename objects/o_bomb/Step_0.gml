/// @description Insert description here
// You can write your code in this editor


if (place_meeting(x,y, o_player)) {

	with (o_player) {
		if (num_of_bombs < num_of_bombs_limit) {
			num_of_bombs += 1;
			audio_sound_pitch (snd_positive, 2);
			audio_play_sound (snd_positive, 30, false);
			instance_destroy(other);
		}
	}
	
}
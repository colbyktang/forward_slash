/// @description Insert description here
// You can write your code in this editor

if (cooldown_timer > 0) {
	cooldown_timer--;	

}
else if (cooldown_timer <= 0) {
	if (place_meeting(x,y, o_player) and !o_player.is_dashing) {
		audio_sound_pitch(snd_sawtooth, 3);
		audio_play_sound(snd_sawtooth, 30, false);
		with (o_player) {
			event_user(0);
			hp -= 1;
			var dir = input_direction;
			x += -lengthdir_x(spd, dir) * 8;
			y += -lengthdir_y(spd, dir) * 8;
		}
	}
	cooldown_timer = cooldown;
}
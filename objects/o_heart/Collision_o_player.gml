/// @description Insert description here
// You can write your code in this editor
audio_play_sound (snd_positive, 30, false);
with (o_player) {
	event_user(1);
	if (hp + 20 > hp_max) hp = 100;
	else hp += 20;
}
instance_destroy(self);
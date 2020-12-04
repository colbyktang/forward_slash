/// @description Insert description here
// You can write your code in this editor

with (o_player) {
	hp -= 5;
	event_user(0); // Trigger hit event
}
instance_destroy(self);
audio_play_sound(snd_sine, 50, false);
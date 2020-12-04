/// @description Insert description here
// You can write your code in this editor

audio_play_sound(snd_crate, 40, false);
if (random(1) > 0.4) {
	instance_create_layer(x,y, "Instances", o_heart);
}
else {
	instance_create_layer(x,y, "Instances", o_bomb);	
}
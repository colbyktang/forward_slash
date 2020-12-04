/// @description Insert description here
// You can write your code in this editor

audio_play_sound(snd_bloop, 40, false);
if (irandom(1)) {
	instance_create_layer(x,y, "Instances", o_heart);
}
else {
	instance_create_layer(x,y, "Instances", o_bomb);	
}
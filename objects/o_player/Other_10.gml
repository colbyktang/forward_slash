/// @description Get Hit Event
// You can write your code in this editor
flash_color = c_red;
flash_alpha = 1;
audio_sound_pitch(snd_hard_hit, random_range(0.7, 1.25));
audio_play_sound(snd_hard_hit, 50, false);
no_damage_taken = false;
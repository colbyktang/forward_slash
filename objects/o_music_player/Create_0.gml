/// @description Insert description here
// You can write your code in this editor

gml_pragma("global", "global.music_player = noone;");

if (instance_exists(global.music_player)) {
    if (global.music_player != id)
        instance_destroy(id);
    exit;
}

//audio_stop_all();
audio_group_load(music);

tracklist = [msc_calico_leviathan, msc_calico_locked_girl, msc_dutyyaknow_makers_ruin];
track = irandom_range(0, 2);

lenTracks = array_length_1d( tracklist);
audio_play_sound(tracklist[track], 100, false);


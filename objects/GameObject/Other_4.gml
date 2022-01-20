/// @description Insert description here
// You can write your code in this editor
faded = false;
alarm[0] = 10;
global.show_textbox = false;

if global.music != previous_music {
		if audio_is_playing(previous_music) {
		audio_stop_sound(previous_music);
		}
		previous_music = global.music;
	}

if !audio_is_playing(global.music) {
	audio_play_sound(global.music,0,true);
	}
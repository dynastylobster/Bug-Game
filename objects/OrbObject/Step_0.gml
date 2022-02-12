/// @description Insert description here
// You can write your code in this editor
if image_index >= 4 and played_sound = false {
	audio_play_sound(OrbExplodeWindupSound,0,0);
	image_speed = 0;
	played_sound = true;
	}

if played_sound = true and !audio_is_playing(OrbExplodeWindupSound) and dead = false {
	image_speed = 0;
	image_index = 5
	audio_play_sound(OrbExplodeSound,0,0);
	dead = true;
	}
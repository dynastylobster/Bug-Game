/// @description Insert description here
// You can write your code in this editor
if !audio_is_playing(OnOffSound) {

if global.on = true {
	global.on = false
	} else global.on = true;
	audio_play_sound(OnOffSound,0,0);
}

if audio_is_playing(OnOffSound) {
audio_stop_sound(ExplodeSound);
}
/// @description Insert description here
// You can write your code in this editor
var is_fullscreen = window_get_fullscreen()
if is_fullscreen {
window_set_fullscreen(false);	
} else {
	window_set_fullscreen(true);
	}
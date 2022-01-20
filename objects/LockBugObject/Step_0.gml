/// @description Insert description here
// You can write your code in this editor
if place_meeting(x+6,y+6,KeyBugThrowObject) or place_meeting(x-6,y-6,KeyBugThrowObject) {
	with(instance_nearest(x,y,KeyBugThrowObject)) {
		alarm[3] = 2;
		}
	if dead = false {
	audio_play_sound(KeySound,0,0);
	image_index = 1;
	alarm[0] = 4;
	dead = true;
}
	}
/// @description Insert description here
// You can write your code in this editor
if image_index > 0 and played_sound = false {
	var explodeX = x+(random_range(-32,32))
	var explodeY = y+(random_range(-32,32))
	audio_play_sound(ExplodeSound,0,0);
	instance_create_layer(explodeX,explodeY,layer,ExplodeObject);
	}
	alarm[0] = 20;
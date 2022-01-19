/// @description Insert description here
// You can write your code in this editor
if place_meeting(x+6,y+6,PushBugObject) or place_meeting(x-6,y-6,PushBugObject) {
	alarm[0] = 10;
	image_index = 1;
	
	with instance_nearest(x,y,PushBugObject) {
		instance_create_layer(x,y,layer,ExplodeObject);
		ParticleBoom(x,y);
		instance_destroy();
		}
	}
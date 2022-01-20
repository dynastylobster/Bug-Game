/// @description Insert description here
// You can write your code in this editor
event_inherited();
if hit = false {
	
if alarm[0] = 30 image_index = 1;
if alarm[0] > 30 and alarm[0] <=80 then image_index = 0;
if alarm[0] > 70 image_index = 2;
}

if instance_exists(PlayerObject) {
	image_angle = point_direction(x,y,PlayerObject.x,PlayerObject.y);
	}
	
if HP = 0 {
	instance_create_layer(x,y,layer,ExplodeObject);
	audio_play_sound(EnemyHitSound,0,0);
	instance_destroy();
	}
	
if global.paused {
	alarm[0] ++
	}
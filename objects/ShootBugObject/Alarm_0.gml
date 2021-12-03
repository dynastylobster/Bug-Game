/// @description Insert description here
// You can write your code in this editor

if global.paused = false {
	
if onscreen = true {
if hit = false {
image_index = 2;
audio_play_sound(ShootBugSound,0,0);
instance_create_layer(x,y,layer,ShootBugBulletObject);
}
	
}

}
alarm[0] = 60;
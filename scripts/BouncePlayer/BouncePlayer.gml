// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BouncePlayer(){
	if instance_exists(PlayerObject) {
	with(PlayerObject) {
	if bounced = false {
		alarm[1] = 45;
		audio_play_sound(BouncePlayerSound,0,0);
		bounced = true;
		}
	}
		if PlayerObject.x > x+8 {PlayerObject.x_speed = 3}
		if PlayerObject.x < x-8 {PlayerObject.x_speed = -3}
		if PlayerObject.y > y+8 {PlayerObject.y_speed = 3}
		if PlayerObject.y < y-8 {PlayerObject.y_speed = -3}
		global.key_right = false;
		global.key_left = false;
		global.key_up = false;
		global.key_down = false;
	}
	
}
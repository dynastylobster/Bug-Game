// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function HitPlayer(){
	if instance_exists(PlayerObject) {
	with(PlayerObject) {
	if HP > 0 and Hit = false {
		if !instance_exists(PlayerSheildObject) then HP -= 1;
		if instance_exists(PlayerSheildObject) then with(PlayerSheildObject) {instance_destroy();}
		sprite_index = PlayerHitSprite
		alarm[0] = 45;
		audio_play_sound(PlayerHitSound,0,0);
		Hit = true;
		}
	}
	if PlayerObject.Hit = true {
		if PlayerObject.x > x+8 {PlayerObject.XSpeed = 3}
		if PlayerObject.x < x-8 {PlayerObject.XSpeed = -3}
		if PlayerObject.y > y+8 {PlayerObject.YSpeed = 3}
		if PlayerObject.y < y-8 {PlayerObject.YSpeed = -3}
		global.key_right = false;
		global.key_left = false;
		global.key_up = false;
		global.key_down = false;
		}
	}
	
}
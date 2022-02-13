/// @description Insert description here
// You can write your code in this editor
if hit = false {
	hp -= 1;
	audio_play_sound(EnemyHitSound,0,0);
	alarm[3] = 30;
	hit = true;
	}
with(other) {instance_destroy();}
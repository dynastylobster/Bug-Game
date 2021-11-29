/// @description Insert description here
// You can write your code in this editor
if hit = false {
HP -= 1;
repeat(8) {instance_create_layer(x,y,layer,ParticleObject);}
audio_play_sound(EnemyHitSound,0,0);
alarm[1] = 20;
sprite_index = ShootBugHitSprite;
hit = true
}
if hit = true
{
if other != KeyBugThrowObject {
with(other) {instance_destroy();}
}
}
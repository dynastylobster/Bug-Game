/// @description Insert description here
// You can write your code in this editor
image_index = 1;
audio_play_sound(EnemyHitSound,0,0);
alarm[0] = 4;

if other != KeyBugThrowObject {
with(other) {instance_destroy();}
}
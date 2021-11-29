/// @description Insert description here
// You can write your code in this editor
if PlayerObject.Carrying != KeyBugThrowObject {
if PlayerObject.Carrying != AmmoBeetleThrowObject {
	instance_place(x,y,AmmoBeetleSpawner).alarm[0] = 150;
	alarm[0] = 1;
	audio_play_sound(BeetleCollectSound,0,0);
	PlayerObject.Carrying = AmmoBeetleThrowObject;
	}
}
/// @description Insert description here
// You can write your code in this editor
if PlayerObject.Carrying != KeyBugThrowObject {
	alarm[0] = 1;
	audio_play_sound(BeetleCollectSound,0,0);
	PlayerObject.Carrying = KeyBugThrowObject;
	}
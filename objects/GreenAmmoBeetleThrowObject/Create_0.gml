/// @description Insert description here
// You can write your code in this editor
RotSpeed = 25;
DrawAngle = 0;
bounced = false;
normal = noone;
if instance_exists(PlayerObject) {
	audio_play_sound(BeetleThrowSound,0,0);
	direction = PlayerObject.direction;
	}
previous_direction = direction;
speed = 3;
alarm[0] = 360;
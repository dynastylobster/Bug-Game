/// @description Insert description here
// You can write your code in this editor
RotSpeed = 25;
DrawAngle = 0;
bounced = false;
normal = noone;
age = 0;
scale = 1;
if instance_exists(PlayerObject) {
	audio_play_sound(BeetleThrowSound,0,0);
	direction = PlayerObject.direction;
	}
previous_direction = direction;
speed = 3;
x_speed = lengthdir_x(speed,direction);
y_speed = lengthdir_y(speed,direction);
speed = 0;
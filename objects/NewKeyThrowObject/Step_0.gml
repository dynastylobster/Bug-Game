/// @description Insert description here
// You can write your code in this editor
if x_speed != 0 and y_speed != 0 {
	DrawAngle -= RotSpeed;
	} else DrawAngle = 0;
scale = 1;

if global.paused = false {
	x+= x_speed;
	y+= y_speed;
	};
	

if place_meeting(x,y+y_speed,WallObject) {
	while !place_meeting(x,y+sign(y_speed),WallObject) {y+=0.25 *sign(y_speed)}
	y_speed *= -1;
	bounced = true;
	alarm[1] = 6;
	}
if place_meeting(x+x_speed,y,WallObject) {
	while !place_meeting(x+sign(x_speed),y,WallObject) {x+=0.25 *sign(x_speed)}
	x_speed *= -1;
	bounced = true;
	alarm[1] = 6;
	}

if alarm[1] = 3 {
	SparkleParticleBoom(x,y);
	}
if alarm[1] = 6 {
	alarm[2] = 20;
	}
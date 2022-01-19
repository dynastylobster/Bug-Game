/// @description Insert description here
// You can write your code in this editor
DrawAngle -= RotSpeed;

age += 1;
if age > 2048 then age = 0;
if alarm[2] > 1 {
	scale = 1+(sin(age))/4;
	}
if alarm[2] = 1 then scale = 1;


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

if place_meeting(x+(x_speed*2),y+(y_speed*2),CrateObject) {
speed = 0;
ParticleBoom(x,y);
instance_create_layer(x,y,layer,ExplodeObject)
instance_destroy();
}
if place_meeting(x+(x_speed*2),y+(y_speed*2),OnOffSwitchObject){
speed = 0;
ParticleBoom(x,y);
instance_create_layer(x,y,layer,ExplodeObject)
instance_destroy();
}

if alarm[1] = 3 {
	audio_play_sound(BounceBeetleSound,0,0);
	SparkleParticleBoom(x,y);
	}
if alarm[1] = 6 {
	alarm[2] = 20;
	}
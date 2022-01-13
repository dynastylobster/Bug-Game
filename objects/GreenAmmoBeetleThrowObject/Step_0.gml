/// @description Insert description here
// You can write your code in this editor
DrawAngle -= RotSpeed;

if global.paused = true then speed = 0;
if global.paused = false then speed = 3;

if place_meeting(x+(speed+3),y,WallObject) {
	normal = 180;
	}
if place_meeting(x-(speed+3),y,WallObject) {
	normal = 0;
	}
if place_meeting(x,y-(speed+3),WallObject) {
	normal = 270;
	}
if place_meeting(x,y+(speed+3),WallObject) {
	normal = 90;
	}

if normal !=noone {
	if place_meeting(x,y,WallObject) {
			if bounced = false {
				direction = normal+direction;
				speed = 3;
				alarm[1] = 6;
				bounced = true;
	}
				
			}
}

if place_meeting(x+speed+3,y+speed+3,CrateObject) or place_meeting(x-speed-3,y-speed-3,CrateObject) {
speed = 0;
ParticleBoom(x,y);
instance_create_layer(x,y,layer,ExplodeObject)
instance_destroy();
}
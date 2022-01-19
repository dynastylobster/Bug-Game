/// @description Insert description here
// You can write your code in this editor
if place_meeting(x+9,y+9,AmmoBeetleThrowObject) or place_meeting(x-9,y-9,AmmoBeetleThrowObject) {
	var ammo_bug = instance_nearest(x,y,AmmoBeetleThrowObject)
	direction = point_direction(x,y,ammo_bug.x,ammo_bug.y)+180;
	speed = 3;
	with ammo_bug {
		instance_create_layer(x,y,layer,ExplodeObject);
		ParticleBoom(x,y);
		instance_destroy();
		}
	}

if place_meeting(x,y,WallObject) {
	speed = 0;
	x = start_x;
	y = start_y;
	}
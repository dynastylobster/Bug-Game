/// @description Insert description here
// You can write your code in this editor
bodyframe = 1;
event_inherited()
direction = image_angle;
start_x = x;
start_y = y;
facing = -1;

if !place_meeting(x,y,WormStopObject) {
	var spot_x;
	var spot_y;
	spot_x = x+lengthdir_x(24,direction);
	spot_y = y+lengthdir_y(24,direction);
	instance_create_layer(spot_x,spot_y,layer,WormStopObject);
	}
	
if !instance_place(x,y,WormHurtObject) {
instance_create_layer(x,y,layer,WormHurtObject);
	}
fast_speed = 3;
slow_speed = 1;
alarm[0] = 8;
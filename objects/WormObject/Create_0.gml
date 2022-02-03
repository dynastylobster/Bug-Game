/// @description Insert description here
// You can write your code in this editor
event_inherited()
direction = image_angle;
start_x = x;
start_y = y;
facing = -1;

if !place_meeting(x,y,WormStopObject) {
	var spot_x;
	var spot_y;
	if direction = 0 then {spot_x = x+22; spot_y = y}
	if direction = 180 then {spot_x = x-22; spot_y = y}
	if direction = 90 then {spot_y = y-22; spot_x = x}
	if direction = 270 then {spot_y = y+22; spot_x = x}
	instance_create_layer(spot_x,spot_y,layer,WormStopObject);
	}
	
if !instance_place(x,y,WormHurtObject) {
instance_create_layer(x,y,layer,WormHurtObject);
} else {
instance_place(x,y,WormHurtObject).x = x
instance_place(x,y,WormHurtObject).y = y
instance_place(x,y,WormHurtObject).direction = direction
instance_place(x,y,WormHurtObject).image_xscale = -50;
	}
	
fast_speed = 3;
slow_speed = 1;
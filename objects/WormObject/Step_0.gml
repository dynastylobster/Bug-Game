/// @description Insert description here
// You can write your code in this editor
event_inherited();

if onscreen and !global.paused {
	
	if place_meeting(x,y,WormStopObject) {
		facing = -1;
		}
	if x > (room_width-4) or x < 4 or y > (room_height-4) or y < 4 {
		facing = 1;
		}
		if facing = -1 then speed = -slow_speed;
		if facing = 1 then speed = fast_speed;
		
	} else {
	speed = 0;
	x = start_x;
	y = start_y;
	}
	
	if !instance_place(x,y,WormHurtObject) {
instance_create_layer(x,y,layer,WormHurtObject);
} else {
instance_place(x,y,WormHurtObject).x = x
instance_place(x,y,WormHurtObject).y = y
instance_place(x,y,WormHurtObject).direction = direction
instance_place(x,y,WormHurtObject).image_xscale = -50;
	}
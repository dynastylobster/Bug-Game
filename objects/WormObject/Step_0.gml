/// @description Insert description here
// You can write your code in this editor
event_inherited();

if !global.paused {
	
	if place_meeting(x,y,WormStopObject) {
		facing = -1;
		}
	if ( (x < 4) or (x > (room_width-4)) or (y < 4) or (y > (room_height-4)) ) {
		facing = 1;
		}
		if facing = -1 then speed = -slow_speed;
		if facing = 1 then speed = fast_speed;
		
	} else {
	speed = 0;
	x = start_x;
	y = start_y;
	}
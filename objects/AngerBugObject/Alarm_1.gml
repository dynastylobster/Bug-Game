/// @description Insert description here
// You can write your code in this editor

if instance_exists(PlayerObject) {
	if angry = true {
		if !place_meeting(x,y,WallObject) {
			direction = lerp(direction, point_direction(x,y,PlayerObject.x, PlayerObject.y),0.8);
			}
		}
	}
alarm[1] = 10;
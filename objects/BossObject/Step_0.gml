/// @description Insert description here
// You can write your code in this editor
event_inherited();

if hit = true {
	image_speed = 1;	
	} else {
	image_speed = 0;
	image_index = 0;
	}

if hp = 0 {
	alarm[2] = 120
	hp = -1;
	}
if hp <= -1 then hit = true;

if dead = true {
	instance_destroy();
	}
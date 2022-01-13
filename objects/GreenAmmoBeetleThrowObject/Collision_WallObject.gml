/// @description Insert description here
// You can write your code in this editor
if !instance_place(x,y,GreenBeetleBounceObject) {
	speed = 0;
	var next_angle = direction-180-90
	instance_create_layer(x,y,layer,GreenBeetleBounceObject);
	}

if instance_place(x,y,GreenBeetleBounceObject) {
	direction = next_angle;
	speed = 3
	if direction != previous_direction {
		instance_destroy(instance_place(x,y,GreenBeetleBounceObject),true);
		}
	}
previous_direction = direction;
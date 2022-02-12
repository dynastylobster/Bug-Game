/// @description Insert description here
// You can write your code in this editor
if instance_exists(PlayerObject) and image_xscale = 1 {
	image_angle = point_direction(x,y,PlayerObject.x,PlayerObject.y);
	} else {
	image_angle += 12	
	}
if instance_exists(OrbObject) {
	if OrbObject.dead = true {
		image_xscale -= 0.0125
		image_yscale -= 0.0125
		}
	}
if image_xscale <= 0 {
	instance_create_layer(x,y,layer_get_id("Instances"),ExplodeObject);
	instance_destroy();
	}
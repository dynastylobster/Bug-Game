/// @description Insert description here
// You can write your code in this editor
if global.battle {
	image_index = 1;
	} else image_index = 0;
	
if image_index = 1 and !instance_place(x,y,WallObject) {
	instance_create_layer(x,y,layer_get_id("Instances"),WallObject);
	}

if !global.battle and instance_place(x,y,WallObject) {
	instance_destroy(instance_place(x,y,WallObject));
	}
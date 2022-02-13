/// @description Insert description here
// You can write your code in this editor
if hp <= 0 {
	var explode_x = x+random_range(-32,32)
	var explode_y = y+random_range(-32,32)
	instance_create_layer(x,y,layer,ExplodeObject);
	}
alarm[1] = 20
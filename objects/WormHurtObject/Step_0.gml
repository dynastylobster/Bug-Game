/// @description Insert description here
// You can write your code in this editor
image_alpha = 0;
if instance_exists(WormObject) {
	x = instance_nearest(x,y,WormObject).x
	y = instance_nearest(x,y,WormObject).y
	image_angle = 180 + instance_nearest(x,y,WormObject).image_angle;
	image_xscale = 24;
	image_yscale = -1;
	}
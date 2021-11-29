/// @description Insert description here
// You can write your code in this editor
var camera_x = camera_get_view_x(view_camera[0]);
var camera_y = camera_get_view_y(view_camera[0]);

if (x > camera_x and x < (camera_x+426) ) and (y > camera_y and y < (camera_y+240) ) {
	onscreen = true
} else onscreen = false;
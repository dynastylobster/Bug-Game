/// @description Insert description here
// You can write your code in this editor
if window_size < 5 {
	window_size += 1 
} else {
	window_size = 2;
	}
	
var window_width = camera_get_view_width(view_camera[0]) * window_size
var window_height = camera_get_view_height(view_camera[0]) * window_size
window_set_size(window_width,window_height);
view_hport[0] = 240 * window_size;
view_wport[0] = 426 * window_size;
surface_resize(application_surface,view_wport[0],view_hport[0]);
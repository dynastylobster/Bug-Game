/// @description Insert description here
// You can write your code in this editor
image_alpha = 0;
draw_self()
draw_text(0,0,string(window_size))
gpu_set_tex_filter(false);

if instance_exists(PlayerObject) {
	draw_sprite(PlayerHPSprite,PlayerObject.HP,camera_get_view_x(view_camera[0])+4,camera_get_view_y(view_camera[0])+4)
	if PlayerObject.Hit = true {
		if (PlayerObject.image_index > 0 and PlayerObject.image_index < 1) or (PlayerObject.image_index > 2 and PlayerObject.image_index < 3) {
			draw_sprite(PlayerHPHitSprite,PlayerObject.HP,camera_get_view_x(view_camera[0])+4,camera_get_view_y(view_camera[0])+4)
			}
		}
	}
	
if global.paused {
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),camera_get_view_x(view_camera[0])+426,camera_get_view_y(view_camera[0])+240,false)
	}
draw_set_color(c_white);
draw_set_alpha(1);

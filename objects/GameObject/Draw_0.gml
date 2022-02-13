/// @description Insert description here
// You can write your code in this editor
image_alpha = 0;
draw_self()
draw_text(0,0,string(window_size))
gpu_set_tex_filter(false);

if room != Title_Screen {
if instance_exists(PlayerObject) {
	draw_sprite(PlayerHPSprite,PlayerObject.HP,camera_get_view_x(view_camera[0])+4,camera_get_view_y(view_camera[0])+4)
	if PlayerObject.Hit = true {
		if (PlayerObject.image_index > 0 and PlayerObject.image_index < 1) or (PlayerObject.image_index > 2 and PlayerObject.image_index < 3) {
			draw_sprite(PlayerHPHitSprite,PlayerObject.HP,camera_get_view_x(view_camera[0])+4,camera_get_view_y(view_camera[0])+4)
			}
		}
	}
}

if instance_exists(BossObject) {
	draw_set_color(c_black)
	draw_rectangle(3,25,104,40,false)
	draw_set_color(c_white)
	draw_sprite_ext(BossHealthSprite,1,4,25,(BossObject.hp)*10,1,0,c_white,1);
	}
	
if global.paused {
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),camera_get_view_x(view_camera[0])+426,camera_get_view_y(view_camera[0])+240,false)
	}
draw_set_color(c_white);
draw_set_alpha(1);

if global.show_textbox {
	draw_set_font(Font1);
	draw_sprite(TextBoxSprite,0,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0])+155);
	draw_text(camera_get_view_x(view_camera[0])+4,camera_get_view_y(view_camera[0])+163,string(global.textbox[0]))
	draw_text(camera_get_view_x(view_camera[0])+4,camera_get_view_y(view_camera[0])+176,string(global.textbox[1]))
	draw_text(camera_get_view_x(view_camera[0])+4,camera_get_view_y(view_camera[0])+189,string(global.textbox[2]))
	draw_text(camera_get_view_x(view_camera[0])+4,camera_get_view_y(view_camera[0])+202,string(global.textbox[3]))
	draw_text(camera_get_view_x(view_camera[0])+4,camera_get_view_y(view_camera[0])+215,string(global.textbox[4]))
}

if faded = false {
	draw_sprite_ext(BlackSprite,0,0,0,room_width,room_height,0,c_white,0+(alarm[0]/10))
	}
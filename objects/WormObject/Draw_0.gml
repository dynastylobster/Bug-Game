/// @description Insert description here
// You can write your code in this editor
var image;
if bodyframe = 1 image = 1;
if bodyframe = -1 image = 2;
for (var i = 0; i < (20*24); i+= 24) {
var ix = lengthdir_x(i+24,direction+180);
var iy = lengthdir_y(i+24,direction+180);
draw_sprite_ext(WormSprite,image,x+ix,y+iy,1,1,image_angle,c_white,1);
}
draw_sprite_ext(WormSprite,0,x,y,1,1,image_angle,c_white,1);
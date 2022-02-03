/// @description Insert description here
// You can write your code in this editor
for (var i = 0; i < (20*24); i+= 24) {
var ix = lengthdir_x(i+24,direction+180);
var iy = lengthdir_y(i+24,direction+180);
draw_sprite_ext(WormSprite,1,x+ix,y+iy,1,1,image_angle,c_white,1);
}
draw_self();
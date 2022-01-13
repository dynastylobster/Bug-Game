/// @description Insert description here
// You can write your code in this editor	
var Holding;
if Carrying != noone {
	if Carrying = AmmoBeetleThrowObject
	{Holding = AmmoBeetleHoldSprite;}
	if Carrying = RedAmmoBeetleThrowObject
	{Holding = RedAmmoBeetleHoldSprite;}
	if Carrying = KeyBugThrowObject
	{Holding = KeyBugHoldSprite;}
	if Carrying = GreenAmmoBeetleThrowObject
	{Holding = GreenAmmoBeetleHoldSprite;}
	draw_sprite_ext(Holding,image_index,x,y,image_xscale,image_yscale,DrawAngle,c_white,1);
	}
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,DrawAngle,c_white,1);

if instance_exists(PlayerSheildObject) {
	draw_sprite_ext(PlayerSheildSprite,age,x,y,1,1,0,c_white,0.5);
	}
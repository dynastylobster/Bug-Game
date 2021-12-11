/// @description Insert description here
// You can write your code in this editor
event_inherited();

if onscreen = false {
	speed = 0
	}
	else {
		if hit = false speed = 1;
		if hit = true speed = 0;
	}
if global.paused = true then speed = 0;
if global.paused = false then speed = 1;

if hit = true {
	sprite_index = AngerBugSpriteHit;
	} else {
		if !angry then sprite_index = AngerBugSpriteCalm
		if angry then sprite_index = AngerBugSpriteAngry
		}
/// @description Insert description here
// You can write your code in this editor
event_inherited();

if onscreen = false then speed = 0 else speed = 1;
DrawAngle = direction;

if global.paused = true then speed = 0;
if global.paused = false then speed = 1;
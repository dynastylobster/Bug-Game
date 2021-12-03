/// @description Insert description here
// You can write your code in this editor
DrawAngle -= RotSpeed;

while place_meeting(x,y,WallObject) {
direction += 45;
if !place_meeting(x,y,SparkleParticleObject) {
repeat(2) {
instance_create_layer(x,y,layer,SparkleParticleObject)}
}
alarm[0] = 10;	

if instance_place(x,y,WallObject) {
	var Wall = instance_place(x,y,WallObject)
	if x > Wall.x x++
	if y > Wall.y y++
	if x < Wall.x x--
	if y < Wall.y y--
	}
}

if global.paused = true then speed = 0;
if global.paused = false then speed = 3;
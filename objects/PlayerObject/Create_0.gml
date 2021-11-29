/// @description Insert description here
// You can write your code in this editor
age = 0;
camera_x = clamp(x-213,0,room_width-426)
camera_y = clamp(y-120,0,room_height-240)
dead = false;
NormalMoveSpeed = 0.5;
Age = 0;
AddAngle = 0;
Carrying = noone;
MoveSpeed = NormalMoveSpeed;
Acceleration = 0.125;
MaxMoveSpeed = 2;
XSpeed = MoveSpeed;
Hit = false
HP = 3;
YSpeed = MoveSpeed;
TryingToMove = false;
direction = point_direction(x,y,mouse_x,mouse_y);
DrawAngle = direction;
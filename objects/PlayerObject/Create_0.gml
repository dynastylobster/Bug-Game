/// @description Insert description here
// You can write your code in this editor
age = 0;

camera_x = clamp(x-213,0,room_width-426)
camera_y = clamp(y-120,0,room_height-240)

dead = false;

Age = 0;
AddAngle = 0;
Carrying = noone;

TryingToMove = false;

x_speed = 0;
y_speed = 0;

normal_move_speed = 1.8;
move_speed = normal_move_speed;
acceleration = 0.5;
normal_fuck_move = 0.9;
fuck_move = normal_fuck_move;
water_fuck_move = 0.95;

Hit = false
HP = 3;

direction = point_direction(x,y,mouse_x,mouse_y);
DrawAngle = direction;
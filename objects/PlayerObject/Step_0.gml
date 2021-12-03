/// @description Insert description here
// You can write your code in this editor

if global.paused = false {
	
age+= 0.5;
if age > 65536 then age = 0;
if !TryingToMove {
	DrawAngle = direction;
	} else {
		DrawAngle = direction + AddAngle;
	}


direction = point_direction(x,y,mouse_x,mouse_y);
Age += 1;
AddAngle = 0 + sin(Age/4) * 24;

//movement
{
	

TryingToMove = abs(global.key_right+global.key_left+global.key_up+global.key_down);
if TryingToMove {
	if !place_meeting(x+MoveSpeed,y,WallObject) and !place_meeting(x-MoveSpeed,y,WallObject) and !place_meeting(x,y+MoveSpeed,WallObject) and !place_meeting(x,y-MoveSpeed,WallObject) {
			if MoveSpeed < MaxMoveSpeed then MoveSpeed += Acceleration;
		}
	} else {
		if !place_meeting(x+XSpeed,y,WallObject) and !place_meeting(x-XSpeed,y,WallObject) and !place_meeting(x,y+YSpeed,WallObject) and !place_meeting(x,y-YSpeed,WallObject) {
		x += XSpeed
		y += YSpeed
		}
		if !place_meeting(x,y,WaterObject) {
		if MoveSpeed > NormalMoveSpeed then MoveSpeed -= Acceleration;
		if XSpeed > 0 then XSpeed -= Acceleration;
		if XSpeed < 0 then XSpeed += Acceleration;
		if YSpeed > 0 then YSpeed -= Acceleration;
		if YSpeed < 0 then YSpeed += Acceleration;
		} else {
		if MoveSpeed > NormalMoveSpeed then MoveSpeed -= Acceleration/4;
		if XSpeed > 0 then XSpeed -= Acceleration/4;
		if XSpeed < 0 then XSpeed += Acceleration/4;
		if YSpeed > 0 then YSpeed -= Acceleration/4;
		if YSpeed < 0 then YSpeed += Acceleration/4;
		}
		
	}
//prevents wrong way twitching
if Hit = false {
if (global.key_right or global.key_left) and (!global.key_up and !global.key_down) {
	YSpeed = 0;
	}
if (global.key_up or global.key_down) and (!global.key_left and !global.key_right) {
	XSpeed = 0;
	}
if global.key_left and XSpeed > 0 then XSpeed = 0;
if global.key_right and XSpeed < 0 then XSpeed = 0;
if global.key_up and YSpeed > 0 then YSpeed = 0;
if global.key_down and YSpeed < 0 then YSpeed = 0;
}

if global.key_right {
	if !place_meeting(x+MoveSpeed,y,WallObject) {
			x+= MoveSpeed;
			if XSpeed < MaxMoveSpeed then XSpeed += Acceleration
		}
	}
if global.key_left {
	if !place_meeting(x-MoveSpeed,y,WallObject) {
			x-= MoveSpeed;
			if XSpeed > -MaxMoveSpeed then XSpeed -= Acceleration
		}
	}
if global.key_down {
	if !place_meeting(x,y+MoveSpeed,WallObject) {
			y+= MoveSpeed;
			if YSpeed < MaxMoveSpeed then YSpeed += Acceleration
		}
	}
if global.key_up {
	if !place_meeting(x,y-MoveSpeed,WallObject) {
			y-= MoveSpeed;
			if YSpeed > -MaxMoveSpeed then YSpeed -= Acceleration
		}
	}

}


//Beetle Throwing
{
	
if !Hit {
if Carrying = noone {
	sprite_index = PlayerSprite;
	} else sprite_index = PlayerHoldSprite;
}

if mouse_check_button_pressed(mb_left) or keyboard_check_pressed(vk_space) {
	if Carrying != noone {
			instance_create_layer(x,y,layer,Carrying);
			Carrying = noone;
		}
	}

}

//collision fix
if instance_place(x,y,WallObject) {
	var Wall = instance_place(x,y,WallObject);
	if x > Wall.x then x++
	if x < Wall.x then x--
	if y > Wall.y then y++
	if y < Wall.y then y--
}
if !place_meeting(x,y,OnOffSpaceCheckObject) {
while place_meeting(x+1,y,WallObject) x-= 1
while place_meeting(x-1,y,WallObject) x+= 1
while place_meeting(x,y+1,WallObject) y-= 1
while place_meeting(x,y-1,WallObject) y+= 1
}
//getting hit
if Hit = true {
	if Carrying !=KeyBugThrowObject then Carrying = noone;
	sprite_index = PlayerHitSprite;
	}
camera_x = clamp(x-213,0,room_width-426)
camera_y = clamp(y-120,0,room_height-240)

camera_set_view_pos(view_camera[0],camera_x,camera_y);

//dying
if HP <= 0 then dead = true;
if dead = true Hit = true;
if dead = true {if image_xscale > 0 then image_xscale -= 0.0625; if image_xscale > 0 then image_yscale -= 0.0625}
if image_xscale = 0.0625 then instance_create_layer(x,y,layer,ExplodeObject);
if !place_meeting(x,y,ExplodeObject) and image_xscale <= 0 then room_restart();

//on-off safety
if !place_meeting(x,y,OnOffSpaceCheckObject) {
	SafeX = x;
	SafeY = y;
}
if place_meeting(x,y,OnBlockObject) or place_meeting(x,y,OffBlockObject) {
	x = SafeX;
	y = SafeY;
	}
	
}
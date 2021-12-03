/// @description Insert description here
// You can write your code in this editor

if global.paused = false {
	
	age+= 0.5;
	if age > 65536 then age = 0;
	
	{ // Bug Angle
		//if !TryingToMove then DrawAngle = direction else DrawAngle = direction + AddAngle;
		direction = point_direction(x,y,mouse_x,mouse_y);
		Age += 1;
		
		if !TryingToMove then AddAngle = 0 else AddAngle = 0 + sin(Age / 4) * 24;
		DrawAngle = lerp(direction,direction + AddAngle,0.5);
	}
	
	{ // Player Movement
		
		// how i know it when he movin
		TryingToMove = abs(global.key_right + global.key_left + global.key_up + global.key_down);
		
		{ // Player Input
			
			// its just easier to type these lmao
			var left = global.key_left;
			var right = global.key_right;
			var up = global.key_up;
			var down = global.key_down;
		
			// setting move speed
			if Hit = false {
				if left {
				if x_speed >= -normal_move_speed then x_speed -= acceleration
				}
				if right {
				if x_speed <= normal_move_speed then x_speed += acceleration
				}
				if up {
				if y_speed >= -normal_move_speed then y_speed -= acceleration
				}
				if down {
				if y_speed <= normal_move_speed then y_speed += acceleration
				}
			}

			// Natural deceleration
				if Hit = false {
				if !place_meeting(x,y,WaterObject) fuck_move = normal_fuck_move else fuck_move = water_fuck_move;
			} else fuck_move = water_fuck_move;
			
			x_speed *= fuck_move;
			y_speed *= fuck_move;
		
			// fuck yeah i love thtndfska
		if !place_meeting(x+x_speed,y,WallObject) {
			x+=x_speed
		}

		if !place_meeting(x,y+y_speed,WallObject) {
			y+=y_speed
		}
		}
	}


	//Beetle Throwing
	{
		if !Hit {
			var index;
			if Carrying = noone then index = PlayerSprite else index = PlayerHoldSprite;
			sprite_index = index;
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
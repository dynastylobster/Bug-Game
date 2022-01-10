if !gamepad_is_connected(0) {
global.key_Z = keyboard_check(ord("Z"));
global.key_Z_pressed = keyboard_check_pressed(ord("Z"));
global.key_X = keyboard_check(ord("X"));
global.key_X_pressed = keyboard_check_pressed(ord("X"));
global.key_C = keyboard_check(ord("C"));
global.key_C_pressed = keyboard_check_pressed(ord("C"));
global.key_right = keyboard_check(ord("D"));
global.key_up = keyboard_check(ord("W"));
global.key_left = keyboard_check(ord("A"));
global.key_down = keyboard_check(ord("S"));
global.key_start = keyboard_check_pressed(vk_enter);
	} else {
global.key_Z = keyboard_check(ord("Z")) + gamepad_button_check(0,gp_face1);
global.key_Z_pressed = keyboard_check_pressed(ord("Z")) + gamepad_button_check_pressed(0,gp_face1);
global.key_X = keyboard_check(ord("X")) + gamepad_button_check(0,gp_face3);
global.key_X_pressed = keyboard_check_pressed(ord("X")) + gamepad_button_check_pressed(0,gp_face3);
global.key_C = keyboard_check(ord("C")) + gamepad_button_check(0,gp_face2);
global.key_C_pressed = keyboard_check_pressed(ord("C")) + gamepad_button_check_pressed(0,gp_face2);
global.key_right = keyboard_check(ord("D")) + gamepad_button_check(0,gp_padr);
global.key_up = keyboard_check(ord("W")) + gamepad_button_check(0,gp_padu);
global.key_left = keyboard_check(ord("A")) + gamepad_button_check(0,gp_padl);
global.key_down = keyboard_check(ord("S")) + gamepad_button_check(0,gp_padd);
global.key_start = keyboard_check_pressed(vk_enter)+ gamepad_button_check_pressed(0,gp_start);
		
	}
	
if keyboard_check_pressed(ord("R")) then room_restart();

if global.key_start {
if global.paused {
	global.paused = false
	} else {global.paused = true}
}

if global.paused {
	if audio_is_playing(global.music) then audio_pause_sound(global.music);
	} else audio_resume_sound(global.music);
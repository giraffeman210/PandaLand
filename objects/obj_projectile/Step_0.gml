/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x + sign(hspeed), y + sign(vspeed), obj_phblock)) {
	instance_destroy();
}
if (place_meeting(x + sign(hspeed), y + sign(vspeed), obj_ph)) {
	obj_ph.hp = 0;
}
//show_debug_message(hspeed);
//other.hp = 0;

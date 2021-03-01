/// @description Insert description here
// You can write your code in this editor
if place_meeting(x + hspeed, y + vspeed, obj_phblock){
	while (!place_meeting(x+sign(hspeed),y,obj_basewall))
	{
		x = x + sign(hspeed);
	}
	audio_play_sound(block, 10, false);
	instance_destroy();
}
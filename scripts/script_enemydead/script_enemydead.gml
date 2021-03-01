// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function script_enemydead(){
	audio_play_sound(enemy_dead, 10, false);
	instance_create_layer(x, y,"instances", obj_enemydead);
	instance_destroy(self);
}
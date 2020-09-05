/// @description Insert description here
// You can write your code in this editor
if (hp == 0){
	audio_play_sound(enemy_dead, 10, false);
	instance_create_layer(x, y,"instances", obj_enemydead);
	instance_destroy(self)
}
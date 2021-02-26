/// @description Insert description here
// You can write your code in this editor
if select = 1 {
	image_index = 2;
	instance_create_layer(448, 320, "Instances", obj_sageghostyell);
	obj_phsleep.change = 1
	alarm_set(0,120);
}

if select = 2 {
	game_end();
}

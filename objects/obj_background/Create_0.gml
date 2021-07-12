/// @description Insert description here
// You can write your code in this editor
healthbar_x = 96;
healthbar_y = 48;
audio_play_sound(panda_falls, 10, true);
if room = room_pandafalls {
	instance_create_layer(96, 480, "layer_player", obj_ph);
}
else {
		instance_create_layer(global.spawnpointx, global.spawnpointy, "layer_player", obj_ph);
}

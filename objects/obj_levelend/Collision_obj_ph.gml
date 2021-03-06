/// @description Set Coordinates
if lock = false {
	audio_stop_all();
	instance_create_layer(x - 128, y - 192, "layer_text", obj_confetti);
	audio_play_sound(finalgate, 10, false);
	lock = true;
}
obj_ph.won = true;
alarm_set(0, 180);
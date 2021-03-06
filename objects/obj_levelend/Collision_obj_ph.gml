/// @description Set Coordinates
if lock = false {
	instance_create_layer(x - 128, y - 192, "layer_text", obj_confetti);
	lock = true;
}
obj_ph.won = true;
alarm_set(0, 180);
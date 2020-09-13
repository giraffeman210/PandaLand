/// @description Insert description here
global.spd_exp += 1
instance_create_layer(other.x, other.y, "layer_text", obj_collect);
instance_destroy(other);
audio_play_sound(eat_fruit, 10, false);

obj_collect.collect = 4

happy = true;
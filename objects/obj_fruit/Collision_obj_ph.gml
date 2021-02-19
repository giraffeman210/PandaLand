/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
instance_create_layer(x, y, "layer_text", obj_collect);
instance_destroy();
ds_list_add(ds_map_find_value(global.itemscollected, room), id);
audio_play_sound(eat_fruit, 10, false);
other.alarm[1] = 60;
other.spritetype = "happy";
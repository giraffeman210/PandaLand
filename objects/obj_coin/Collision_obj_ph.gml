/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
other.money += 1;
instance_create_layer(x, y, "layer_text", obj_collect);
instance_destroy();
ds_list_add(ds_map_find_value(global.itemscollected, room), id);
audio_play_sound(coin, 10, false);
obj_collect.collect = 1;
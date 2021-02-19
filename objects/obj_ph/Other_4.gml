/// @description Insert description here
// You can write your code in this editor
currentroomlist = ds_map_find_value(global.itemscollected, room)
for (i = 0; i < ds_list_size(currentroomlist); i++) {
	instance_destroy(ds_list_find_value(currentroomlist, i));
}
//ds_list_add(ds_map_find_value(global.itemscollected, room), id);
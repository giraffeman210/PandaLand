/// @description Insert description here
// You can write your code in this editor
if global.stage = 2 {
	sprite_index = spr_pandaforest;
	instance_create_layer(x + 56, y + 88, "stage", obj_stage);
	if global.pandaforest >= 2 {
		instance_create_layer(x + 184, y + 88, "stage", obj_stage);
		if global.pandaforest >= 3 {
		instance_create_layer(x + 312, y + 88, "stage", obj_stage);
		if global.pandaforest >= 4 {
			instance_create_layer(x + 440, y + 88, "stage", obj_stage);
		}
	}
}
}
if global.stage = 3 {
	sprite_index = spr_pandacaves;
	instance_create_layer(x + 56, y + 88, "stage", obj_stage);
	if global.pandacaves >= 2 {
		instance_create_layer(x + 184, y + 88, "stage", obj_stage);
		if global.pandacaves >= 3 {
		instance_create_layer(x + 312, y + 88, "stage", obj_stage);
		if global.pandacaves >= 4 {
			instance_create_layer(x + 440, y + 88, "stage", obj_stage);
		}
	}
}
}
if global.stage = 4 {
	sprite_index = spr_pandaseaside;
	instance_create_layer(x + 56, y + 88, "stage", obj_stage);
	if global.pandaseaside >= 2 {
		instance_create_layer(x + 184, y + 88, "stage", obj_stage);
		if global.pandaseaside >= 3 {
		instance_create_layer(x + 312, y + 88, "stage", obj_stage);
		if global.pandaseaside >= 4 {
			instance_create_layer(x + 440, y + 88, "stage", obj_stage);
		}
	}
}
}
if global.stage = 5 {
	room_goto(room_pandacity);
}
instance_create_layer(x + 73, y + 104, "cursor", obj_sspanda);
stage = 1;
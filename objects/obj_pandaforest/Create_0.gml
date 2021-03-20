/// @description Insert description here
// You can write your code in this editor
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
instance_create_layer(x + 73, y + 104, "cursor", obj_sspanda);
stage = 1;
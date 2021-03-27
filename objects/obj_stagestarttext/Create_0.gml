/// @description Insert description here
// You can write your code in this editor
if global.stage = 1 {
	sprite_index = spr_pandafalls;
}
if global.stage = 2 {
	sprite_index = spr_pandaforest1;
	image_index = (global.stageselect - 1);
}
if global.stage = 3 {
	sprite_index = spr_pandacaves1;
	image_index = (global.stageselect - 1);
}
if global.stage = 4 {
	sprite_index = spr_pandaseaside1;
	image_index = (global.stageselect - 1);
}
if global.stage = 5 {
	sprite_index = spr_pandacity1;
	image_index = (global.stageselect - 1);
}
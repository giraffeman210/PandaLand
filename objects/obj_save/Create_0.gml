/// @description Global Variables

global.atk_exp = 0;
global.def_exp = 0;
global.spd_exp = 0;
global.spl_exp = 0;
global.level = 0;
global.atk_lv = 0;
global.def_lv = 0;
global.spd_lv = 0;
global.spl_lv = 0;
global.spawnpointx = 96;
global.spawnpointy = 480;
global.levelup = false;
global.pandaforest = 4;
global.pandacaves = 1;
global.pandaseaside = 1;
global.pandacity = 1;
global.stage = 2;
global.stageselect = 1;
if score = 1 {
	global.tutorial = 0
} else {
	global.tutorial = 1
	global.tutorialnum = 0;
}
lives = 3;
var i = 0;
global.itemscollected = ds_map_create();
while (room_exists(i)) {
	ds_map_add(global.itemscollected, i, ds_list_create());
	i++;
}
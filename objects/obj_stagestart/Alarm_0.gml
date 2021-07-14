/// @description Insert description here
// You can write your code in this editor
if global.stage = 2 {
	room_goto(room_pandafalls);
}
if global.stage = 3 {
	room_goto(room_pandaforest);
}
if global.stage = 1 {
	room_goto(room_pandacaves);
}
if global.stage = 5 {
	room_goto(room_pandaseaside);
}
if global.stage = 6 {
	if global.stageselect = 1 {
		room_goto(room_pandafalls);
	}
	if global.stageselect = 2 {
		room_goto(room_pandaforest);
	}
	if global.stageselect = 3 {
		room_goto(room_pandacaves);
	}
	if global.stageselect = 4 {
		room_goto(room_demoend);
	}
}
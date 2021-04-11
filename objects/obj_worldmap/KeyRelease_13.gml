/// @description Insert description here
// You can write your code in this editor
if global.stage = 1 or 3 or 5 {
	room_goto(room_stageselect);
}

if global.stage = 2 {
	room_goto(room_stagestart);
}

if global.stage = 4 {
	room_goto(room_pandacity);
}

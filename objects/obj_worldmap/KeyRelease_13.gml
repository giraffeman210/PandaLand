/// @description Insert description here
// You can write your code in this editor
if global.stage = 2 {
	room_goto(room_stagestart);
}
if global.stage = 4 {
	room_goto(room_pandacity);
}
else {
	room_goto(room_stageselect);
}
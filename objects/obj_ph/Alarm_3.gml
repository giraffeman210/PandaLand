/// @description Death
// You can write your code in this editor
if lives >= 1 {
	lives -= 1;
	room_goto(room_stagestart);
}
if lives <= 0 {
	room_goto(room_gameover);
}
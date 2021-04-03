/// @description Insert description here
// You can write your code in this editor
if room = room_worldmap {
	if global.stage = 4 {
			x = 640;
			y = 192;
			global.stage = 2;
			}
	else {
		if global.stage = 5 {
			x = 640;
			y = 448;
			global.stage = 4
		}
	}
}
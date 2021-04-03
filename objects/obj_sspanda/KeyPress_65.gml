/// @description Insert description here
// You can write your code in this editor
if room = room_stageselect {
	if obj_stageselect.stage > 1 {
		x = x - 128;
		obj_stageselect.stage -= 1; 
	}
}
if room = room_worldmap {
	if global.stage = 3 {
		x = 640;
		y = 192;
		global.stage = 2;
		
	}
	else {
		if global.stage = 2 or 4 or 5 {
			x = 448;
			y = 224;
			global.stage= 1;
			}
			}
}

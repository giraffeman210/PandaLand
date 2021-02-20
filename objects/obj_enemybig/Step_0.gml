/// @description Insert description here
// You can write your code in this editor
event_inherited();
if hit {
	exit;
}
if (script_wallcollision(hsp)) {

	hsp = -hsp;
	image_xscale = image_xscale * -1;	
}

if (place_meeting(x,y+1,obj_basewall)) {
	if (not position_meeting(x + hsp, y + (sprite_height/2) + 8, obj_basewall)) {
		hsp = -hsp;
		image_xscale = image_xscale * -1;	
	}
}

if (aggro) {
	sprite_index = spr_enemybigattack;
	x = x + hsp;
}
/// @description 
event_inherited();
if hit {
	recovering = true;
	alarm_set(2, 30);
	exit;
}
if (recovering) {
	sprite_index = 	spr_enemybasic;
	exit;
}
if (script_wallcollision(hsp)) {
	hsp = -hsp;
	image_xscale = image_xscale * -1;	
}
//if (place_meeting(x+hsp,y,obj_wall))
//{
//	while (!place_meeting(x+sign(hsp),y,obj_wall))
//	{
//			x = x + sign(hsp);
//	}
//	hsp = -hsp;
//	image_xscale = image_xscale * -1;
//}

if (aggro) run = true;
if (run) {
	sprite_index = spr_enemybasicattack;
	x = x + hsp;
}
//else {
//	sprite_index = spr_enemybasic
//}
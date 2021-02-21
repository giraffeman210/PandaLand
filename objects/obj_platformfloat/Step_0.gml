/// @description Insert description here
// You can write your code in this editor
//player = instance_place(x, y - 1, obj_ph);
//if (place_meeting(x + xspeed, y + yspeed,obj_basewall))
//{
//	while (!place_meeting(x + sign(xspeed), y + sign(yspeed), obj_wall))
//	{
//			x = x + sign(xspeed);
//			y = y + sign(yspeed);
//	}
//	xspeed = -xspeed;
//	yspeed = -yspeed;
//}
//if (place_meeting(x, y - 1,obj_ph))
//{
//	//show_debug_message(yspeed);
//	obj_ph.x += xspeed;
//	obj_ph.y += yspeed;
//}
//x += xspeed;
//y += yspeed;

if (script_wallcollision(movespd)) {
	movespd = -movespd;
}
if (place_meeting(x, y, obj_platformfloatstop)){
	if (not turned) {
		approachingturn = true;
	}
	
}
else {
	approachingturn = false;
	turned = false;
}
if approachingturn {
	if (not position_meeting(x + ((sprite_width/2) * sign(movespd) + movespd) , y, obj_platformfloatstop)) {
		movespd = -movespd;
		turned = true;
		approachingturn = false;
	}	
}


if (place_meeting(x, y - 1,obj_ph) and obj_ph.hp != 0) {
	obj_ph.x += movespd;
//	obj_ph.y += yspeed;
}
x += movespd;
//y += yspeed;

//if player != noone{
//	player.x += xspeed;
//	player.y += yspeed;
//}
/// @description Insert description here

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

if (place_meeting(x, y - 1,obj_ph) or place_meeting(x + movespd, y,obj_ph)) {
	obj_ph.hspcarry += movespd;
	obj_ph.onplatform = true;
}


x += movespd;

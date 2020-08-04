/// @description 
if ((x - obj_ph.x) < 500) {
	aggro = true;
	sprite_index = spr_enemybasicattack;
}

if (place_meeting(x+hsp,y,obj_wall))
{
	while (!place_meeting(x+sign(hsp),y,obj_wall))
	{
			x = x + sign(hsp);
	}
	hsp = -hsp;
	image_xscale = image_xscale * -1;
}

if (aggro) {
	x = x + hsp;
}


//Horizontal Collision

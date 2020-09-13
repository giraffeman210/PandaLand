/// @description 
event_inherited();

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
	sprite_index = spr_enemybasicattack;
	x = x + hsp;
}

//Horizontal Collision



/// @description Insert description here
// You can write your code in this editor
if ((x - obj_ph.x) < 450) {
	aggro = true;
}
vsp = vsp - grv;

//Vertical Collision
if (place_meeting(x,y+vsp,obj_basewall))
{
	while (!place_meeting(x,y+sign(vsp),obj_basewall))
	{
			y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;
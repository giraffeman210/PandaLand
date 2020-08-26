/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x + xspeed, y + yspeed,obj_basewall))
{
	while (!place_meeting(x + sign(xspeed), y + sign(yspeed), obj_wall))
	{
			x = x + sign(xspeed);
			y = y + sign(yspeed);
	}
	xspeed = -xspeed;
	yspeed = -yspeed;
}

x = x + xspeed;
y = y + yspeed;
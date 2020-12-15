/// @description Insert description here
// You can write your code in this editor
//player = instance_place(x, y - 1, obj_ph);
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
if (place_meeting(x, y - 1,obj_ph))
{
	//show_debug_message(yspeed);
	obj_ph.x += xspeed;
	obj_ph.y += yspeed;
}
x += xspeed;
y += yspeed;


//if player != noone{
//	player.x += xspeed;
//	player.y += yspeed;
//}
/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_ph)) {
	if ((x - obj_ph.x) < 450) {
		aggro = true;
	}
	else {
		aggro = false;
	}
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
if (y > room_height + 64) {
	instance_destroy(self)
}
//atk level up
if (global.levelup = true) {
	if (hp >= 1) {
		hp = (hp - global.atk_lv);
	}
}
if hit {
	sprite_index = hitsprite;
	script_enemyhit(movepoint, hitspeed);
	exit;
}
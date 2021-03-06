/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_ph)) {
	//450
	if (point_distance(x, y, obj_ph.x, obj_ph.y) < 450) {
		aggro = true;
	}
	else {
		aggro = false;
	}
}
vsp = vsp - grv;

//Vertical Collision
if (script_floorcollision(vsp))
{
	vsp = 0;
}
var platformtop = instance_place(x, y + vsp, obj_platformfloat);
if platformtop != noone {
	while (!place_meeting(x,y+sign(vsp),obj_platformfloat))
	{
			y = y + sign(vsp);
	}
	vsp = 0;
	if !script_wallcollision(platformtop.movespd) extraspd += platformtop.movespd;
}

if (hsp > 0) {
	var platformsides = instance_place(x + hsp, y, obj_platformfloat);
	if platformsides != noone {
		while (!place_meeting(x+sign(hsp),y,obj_platformfloat))
		{
				x = x + sign(hsp);
		}
		if sign(hsp) != sign(platformsides.movespd) {
			x += platformsides.movespd;
			extraspd = 0;
		}
		hsp = 0;
	}
}
else {
	var platformsideright = instance_place(x + 4, y, obj_platformfloat);
	var platformsideleft = instance_place(x - 4, y, obj_platformfloat);
	if platformsideright != noone {
		while (!place_meeting(x + 1, y, obj_platformfloat))
		{
			x = x + 1;
		}
		x += platformsideright.movespd;
	}
	if platformsideleft != noone {
		while (!place_meeting(x - 1, y, obj_platformfloat))
		{
			x = x - 1;
		}
		x += platformsideleft.movespd;
	}
	
	extraspd = 0;
	hsp = 0;
}

if ((place_meeting(x + 1 , y, obj_platformfloat) or place_meeting(x - 1, y, obj_platformfloat)) and 
	(place_meeting(x + 1, y, obj_basewall) or place_meeting(x - 1, y, obj_basewall))) {
	script_enemydead();	
}

//var platformtop = instance_place(x, y + 1, obj_platformfloat);
//if platformtop != noone {
//	onplatform = true;
	
//}

y += vsp;
x += extraspd;
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
	if (hp == 0){
		script_enemydead();
	}
	sprite_index = hitsprite;
	if (not wallhit) wallhit = script_enemyhit(movepoint, hitspeed);
	exit;
}
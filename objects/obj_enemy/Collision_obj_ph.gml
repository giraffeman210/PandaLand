/// @description Insert description here
// You can write your code in this editor
if (obj_ph.invincible == false)
{
	obj_ph.hp -= 1;
	obj_ph.sprite_index = spr_phhit;
	obj_ph.invincible = true;
	alarm_set(2,60);
}
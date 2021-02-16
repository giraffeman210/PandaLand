/// @description Insert description here
// You can write your code in this editor
if (obj_ph.invincible == false)
{
	obj_ph.hp -= 1;
	if obj_ph.hp > 0 {
		obj_ph.invincible = true;
		alarm_set(3,6);
		alarm_set(2,60);
	}
}
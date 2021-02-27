// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function script_phhit(){
	if (obj_ph.invincible == false)
	{
		obj_ph.hp -= 1;
		if obj_ph.hp > 0 {
			obj_ph.invincible = true;
			alarm_set(3,6);
			alarm_set(2,60);
		}
	}
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function script_phhit(){
	if (invincible == false)
	{
		hp -= 1;
		invincible = true;
		if hp > 0 {
			//invincible = true;
			//obj_ph.alarm[6] = room_speed * .1;
			alarm_set(6,6);
			//obj_ph.alarm[5] = room_speed * 1;
			alarm_set(5,60);
		}
		else script_phdead();
	}
}
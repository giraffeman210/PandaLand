/// @description invincible animation
if(invincible){
	if(sprite_index != spr_phinvisible){
		//obj_ph.normalsprite = false;
		currentsprite = sprite_index;
		sprite_index = spr_phinvisible;
	}
	else {
		sprite_index = currentsprite;
	}
	//alarm[6] = room_speed * .1;
	alarm_set(6,6);
}

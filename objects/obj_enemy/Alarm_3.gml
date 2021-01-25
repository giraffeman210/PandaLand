/// @description invincible animation
// You can write your code in this editor
if(obj_ph.invincible){
	if(obj_ph.sprite_index != spr_phinvisible){
		obj_ph.normalsprite = false;
		currentsprite = obj_ph.sprite_index;
		obj_ph.sprite_index = spr_phinvisible;
	}
	else {
		obj_ph.sprite_index = currentsprite;
	}
	alarm_set(3,6);
}
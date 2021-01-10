/// @description Insert description here
// You can write your code in this editor
//#blinking = true;
//#if (obj_ph.invincible) {
//#	if !blinking {
//#		alarm_set(3,12);
//#	}
//#}

if(obj_ph.invincible){
	if(obj_ph.sprite_index != spr_phinvisible){
		obj_ph.normalsprite = false;
		currentsprite = obj_ph.sprite_index;
		//object_set_sprite(obj_ph, spr_pfblockstopcave);
		obj_ph.sprite_index = spr_phinvisible;
		//obj_ph.visible = false;
	}
	else {
		obj_ph.sprite_index = currentsprite;
		//object_set_sprite(obj_ph, currentsprite);
		//obj_ph.visible = true;	
	}
	alarm_set(3,6);
}
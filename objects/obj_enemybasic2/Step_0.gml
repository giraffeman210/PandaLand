/// @description Insert description here
// You can write your code in this editor
event_inherited();
if not wait {
	if (aggro and starready) {
			sprite_index = spr_enemybasic2throw;
			image_index = 0;
			starready = false;
	}
	if (not starready and image_index >= 1 and not starthrown) {
		ninjastar = instance_create_layer(x - (sign(image_xscale) * 40), y, "Instances", obj_ninjastar);
		starthrown = true;
		alarm[0] = 3 * room_speed;
		wait = true;
	}
}
if starthrown {
	if (distance_to_object(ninjastar) > 448) {
		instance_destroy(ninjastar);
		starthrown = false;
		starready = true;
	}
}
if (instance_exists(obj_ph)) {
	if x > obj_ph.x {
	image_xscale = 1		
}
if x < obj_ph.x {
	image_xscale = -1	
}
	
}

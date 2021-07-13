/// @description Insert description here
// You can write your code in this editor
event_inherited();
if (hit) {
	starready = true;
	wait = true;
	exit;	
}
if not wait {
	if (aggro and starready) {
		firstdir = point_direction(x, y, obj_ph.x, obj_ph.y);
		if (not(firstdir > 240 and firstdir < 300)) {
			sprite_index = spr_enemybasic2throw;
			image_index = 0;
			starready = false;
		}
	}
	if (not starready and image_index >= 1 and not starthrown) {
		var dir = point_direction(x, y, obj_ph.x, obj_ph.y);
		ninjastar = instance_create_layer(x - (sign(image_xscale) * 40), y, "Instances", obj_ninjastar);
		if (not(dir > 240 and dir < 300)) {
			ninjastar.direction = dir;
		}
		else {
			ninjastar.direction = firstdir;
		}
		ninjastar.speed = 6;
		starthrown = true;
		alarm[4] = 3 * room_speed;
		wait = true;
	}
}
if starthrown {
	if (distance_to_object(ninjastar) > 2000) {
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

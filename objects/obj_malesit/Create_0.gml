/// @description Insert description here
person = irandom_range(1,36);

if person = 1 {
	if global.lock20 = false {
	sprite_index = spr_malesitr;
	global.lock20 = true;
	}
}
if person = 2 {
	if global.lock21 = false {
	sprite_index = spr_malesitb;
	global.lock21 = true;
	}
}
if person = 3 {
	if global.lock22 = false {
	sprite_index = spr_malesitbb;
	global.lock22 = true;
	}
}
if person = 4 {
	if global.lock23 = false {
	sprite_index = spr_malenerdsitr;
	global.lock23 = true;
	}
}
if person = 5 {
	if global.lock24 = false {
	sprite_index = spr_malenerdsitb;
	global.lock24 = true;
	}
}
if person = 6 {
	if global.lock25 = false {
	sprite_index = spr_malenerdsitbb;
	global.lock25 = true;
	}
}
if person = 7 {
	if global.lock26 = false {
	sprite_index = spr_maleoldsitr;
	global.lock26 = true;
	}
}
if person = 8 {
	if global.lock27 = false {
	sprite_index = spr_maleoldsitb;
	global.lock27 = true;
	}
}
if person = 9 {
	if global.lock28 = false {
	sprite_index = spr_maleoldsitbb;
	global.lock28 = true;
	}
}
if person = 10 {
	if global.lock29 = false {
	sprite_index = spr_femalesitg;
	global.lock29 = true;
	}
}
if person = 11 {
	if global.lock30 = false {
	sprite_index = spr_femalesitp;
	global.lock30 = true;
	}
}
if person = 12 {
	if global.lock31 = false {
	sprite_index = spr_femalesity;
	global.lock31 = true;
	}
}
if person = 13 {
	if global.lock32 = false {
	sprite_index = spr_femalenerdsitg;
	global.lock32 = true;
	}
}
if person = 14 {
	if global.lock33 = false {
	sprite_index = spr_femalenerdsitp;
	global.lock33 = true;
	}
}
if person = 15 {
	if global.lock34 = false {
	sprite_index = spr_femalenerdsity;
	global.lock34 = true;
	}
}
if person = 16 {
	if global.lock35 = false {
	sprite_index = spr_femaleoldsitg;
	global.lock35 = true;
	}
}
if person = 17 {
	if global.lock36 = false {
	sprite_index = spr_femaleoldsitp;
	global.lock36 = true;
	}
}
if person = 18 {
	if global.lock37 = false {
	sprite_index = spr_femaleoldsity;
	global.lock37 = true;
	}
}
if person = 19 {
	if global.lock38 = false {
		connor = irandom_range(1,2); 
		if connor = 1 {
		sprite_index = spr_connor
		global.lock38 = true
		}
	}
}
if person > 19 {
	instance_destroy(self)
}
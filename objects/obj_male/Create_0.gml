/// @description Insert description here
person = irandom_range(1,36);

if person = 1 {
	if global.lock1 = false {
		sprite_index = spr_maler;
		global.lock1 = true;
	}
}
if person = 2 {
	if global.lock2 = false {
	sprite_index = spr_maleb;
	global.lock2 = true;
	}
}
if person = 3 {
	if global.lock3 = false {
	sprite_index = spr_malebb;
	global.lock3 = true;
	}
}
if person = 4 {
	if global.lock4 = false {
	sprite_index = spr_malenerdr;
	global.lock4 = true;
	}
}
if person = 5 {
	if global.lock5 = false {
	sprite_index = spr_malenerdb;
	global.lock5 = true;
	}
}
if person = 6 {
	if global.lock6 = false {
	sprite_index = spr_malenerdbb;
	global.lock6 = true;
	}
}
if person = 7 {
	if global.lock7 = false {
	sprite_index = spr_maleoldr;
	global.lock7 = true;
	}
}
if person = 8 {
	if global.lock8 = false {
	sprite_index = spr_maleoldb;
	global.lock8 = true;
	}
}
if person = 9 {
	if global.lock9 = false {
	sprite_index = spr_maleoldbb;
	global.lock9 = true;
	}
}
if person = 10 {
	if global.lock10 = false {
	sprite_index = spr_femaleg;
	global.lock10 = true;
	}
}
if person = 11 {
	if global.lock11 = false {
	sprite_index = spr_femalep;
	global.lock11 = true;
	}
}
if person = 12 {
	if global.lock12 = false {
	sprite_index = spr_femaley;
	global.lock12 = true;
	}
}
if person = 13 {
	if global.lock13 = false {
	sprite_index = spr_femalenerdg;
	global.lock13 = true;
	}
}
if person = 14 {
	if global.lock14 = false {
	sprite_index = spr_femalenerdp;
	global.lock14 = true;
	}
}
if person = 15 {
	if global.lock15 = false {
	sprite_index = spr_femalenerdy;
	global.lock15 = true;
	}
}
if person = 16 {
	if global.lock16 = false {
	sprite_index = spr_femaleoldg;
	global.lock16 = true;
	}
}
if person = 17 {
	if global.lock17 = false {
	sprite_index = spr_femaleoldp;
	global.lock17 = true;
	}
}
if person = 18 {
	if global.lock18 = false {
	sprite_index = spr_femaleoldy;
	global.lock18 = true;
	}
}
if person = 19 {
	if global.lock19 = false {
		alex = irandom_range(1,3);
		if alex = 1 {
			sprite_index = spr_alex;
			global.lock19 = true;
		}
	}
}
if person > 19 {
	instance_destroy(self)
}
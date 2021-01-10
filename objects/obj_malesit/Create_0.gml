/// @description Insert description here
person = irandom_range(1,36);

if person = 1 {
	sprite_index = spr_malesitb
}
if person = 2 {
	sprite_index = spr_malesitbb
}
if person = 3 {
	sprite_index = spr_malesitr
}
if person = 4 {
	sprite_index = spr_malenerdsitb
}
if person = 5 {
	sprite_index = spr_malenerdsitbb
}
if person = 6 {
	sprite_index = spr_malenerdsitr
}
if person = 7 {
	sprite_index = spr_maleoldsitb
}
if person = 8 {
	sprite_index = spr_maleoldsitbb
}
if person = 9 {
	sprite_index = spr_maleoldsitr
}
if person = 10 {
	sprite_index = spr_femalesitg
}
if person = 11 {
	sprite_index = spr_femalesitp
}
if person = 12 {
	sprite_index = spr_femalesity
}
if person = 13 {
	sprite_index = spr_femalenerdsitg
}
if person = 14 {
	sprite_index = spr_femalenerdsitp
}
if person = 15 {
	sprite_index = spr_femalenerdsity
}
if person = 16 {
	sprite_index = spr_femaleoldsitg
}
if person = 17 {
	sprite_index = spr_femaleoldsitp
}
if person = 18 {
	sprite_index = spr_femaleoldsity
}
if person > 18 {
	instance_destroy(self)
}



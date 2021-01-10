/// @description Insert description here
person = irandom_range(1,36);

if person = 1 {
	sprite_index = spr_maler
}
if person = 2 {
	sprite_index = spr_maleb
}
if person = 3 {
	sprite_index = spr_malebb
}
if person = 4 {
	sprite_index = spr_malenerdr
}
if person = 5 {
	sprite_index = spr_malenerdb
}
if person = 6 {
	sprite_index = spr_malenerdbb
}
if person = 7 {
	sprite_index = spr_maleoldr
}
if person = 8 {
	sprite_index = spr_maleoldb
}
if person = 9 {
	sprite_index = spr_maleoldbb
}
if person = 10 {
	sprite_index = spr_femaleg
}
if person = 11 {
	sprite_index = spr_femalep
}
if person = 12 {
	sprite_index = spr_femaley
}
if person = 13 {
	sprite_index = spr_femalenerdg
}
if person = 14 {
	sprite_index = spr_femalenerdp
}
if person = 15 {
	sprite_index = spr_femalenerdy
}
if person = 16 {
	sprite_index = spr_femaleoldg
}
if person = 17 {
	sprite_index = spr_femaleoldp
}
if person = 18 {
	sprite_index = spr_femaleoldy
}
if person > 18 {
	instance_destroy(self)
}

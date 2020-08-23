/// @description Insert description here
// You can write your code in this editor
if (sprite_index == spr_enemybasic2throw) {
	instance_create_layer(x+(64 * sign(image_xscale)), y, "Instances", obj_staff);
	sprite_index = spr_enemybasic2;
}
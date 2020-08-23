/// @description Insert description here
// You can write your code in this editor
if (sprite_index == spr_enemybasic2throw) {
	instance_create_layer(x - 40, y, "Instances", obj_ninjastar);
	sprite_index = spr_enemybasic2;
}
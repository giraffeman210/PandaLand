/// @description Insert description here
// You can write your code in this editor
floatblock = instance_place(x,y+1,obj_platformfloat);
if floatblock != noone{
	x += floatblock.xspeed;
	y += floatblock.yspeed;
}
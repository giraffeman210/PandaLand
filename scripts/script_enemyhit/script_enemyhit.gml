// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function script_enemyhit(argument0, argument1){
	var distance = abs(argument0 - (x + argument1));
	if distance > abs(argument1)  {
		x+=argument1;
	}
	else {
		x = argument0;
	}
}
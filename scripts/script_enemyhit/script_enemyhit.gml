// argument0 is movepoint
// argument1 is hitspeed
function script_enemyhit(argument0, argument1){
	if (script_wallcollision(argument1)) exit;
	var distance = abs(argument0 - (x + argument1));
	if distance > abs(argument1)  {
		x+=argument1;
	}
	else {
		x = argument0;
	}
}
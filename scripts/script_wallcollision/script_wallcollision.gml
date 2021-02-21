// argument0 is hsp
function script_wallcollision(argument0){
	if (place_meeting(x+argument0,y,obj_basewall))
	{
		while (!place_meeting(x+sign(argument0),y,obj_basewall))
		{
				x = x + sign(argument0);
		}
		return true;
	}
	else {
		return false;	
	}
}
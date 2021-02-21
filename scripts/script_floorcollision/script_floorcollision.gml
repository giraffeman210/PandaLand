//argument0 is vsp
function script_floorcollision(argument0){
	if (place_meeting(x,y+argument0,obj_basewall))
	{
		while (!place_meeting(x,y+sign(argument0),obj_basewall))
		{
				y = y + sign(argument0);
		}
		return true;
	}
	else {
		return false;	
	}
}
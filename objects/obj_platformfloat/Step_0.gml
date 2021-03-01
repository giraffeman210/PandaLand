if (place_meeting(x+movespd,y,obj_wall)) {
	movespd = -movespd;
}
x += movespd;
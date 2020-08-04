/// @desc Main Step Event

//Attack
//We want to make sure panda is touching the ground and not attacking already
if (keyboard_check_pressed(vk_enter) && place_meeting(x,y+1,obj_basewall) && !attacking) {	
	staff = instance_create_layer(x+(64 * sign(image_xscale)), y, "layer_player", obj_staff);
	if (image_xscale == -1) {
		staff.image_xscale = -1	
	}
	sprite_index = spr_phattack;
	attacking = true;
	alarm[0] = room_speed * .3;
}



// left & right movement
// keep track of the last key pushed and if both keys are pressed move in direction of last key
if (keyboard_check_pressed(ord("A")))
{
	lastkeydown = "left";
	leftkeydown = true;
}
if (keyboard_check_released(ord("A")))
{
	leftkeydown = false;
	if (rightkeydown)
	{
		lastkeydown = "right";
	}
	else
	{
		lastkeydown = "";
	}
}
if (keyboard_check_pressed(ord("D")))
{
	lastkeydown = "right";
	rightkeydown = true;
}
if (keyboard_check_released(ord("D")))
{
	rightkeydown = false;	
	if (leftkeydown) 
	{
		lastkeydown = "left";
	}
	else
	{
		lastkeydown = "";
	}
}
if attacking exit;
if (lastkeydown == "left")
{
	//Flip sprite to match direction
	image_xscale = -1;
	hsp = -walksp;	
}
if (lastkeydown == "right")
{
	//Flip sprite to match direction
	image_xscale = 1;
	hsp = walksp;
}
if (lastkeydown == "")
{
	hsp = 0;
}

//Jump
if (place_meeting(x,y+1,obj_basewall) && keyboard_check_pressed(vk_space))
{
	sprite_index = spr_phjump;
	vsp = initjumpvelocity;
}
if (keyboard_check_released(vk_space))
{
	//Terminate jump early if necessary
	if (vsp < -termvelocity) {
		vsp = -termvelocity;	
	}
}

//Gravity pulls down player
vsp = vsp - grv;

//Horizontal Collision
if (place_meeting(x+hsp,y,obj_basewall))
{
	while (!place_meeting(x+sign(hsp),y,obj_basewall))
	{
			x = x + sign(hsp)
	}
	hsp = 0;
}

//Change animation to match movement
if (hsp == 0)
{
	image_speed = 0;
	image_index = 0;
}
else {
	image_speed = 1;
}

x = x + hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,obj_basewall))
{
	while (!place_meeting(x,y+sign(vsp),obj_basewall))
	{
			y = y + sign(vsp);
	}

	vsp = 0;
	sprite_index = spr_ph;
		
}

y = y + vsp;

//Text
if(mouse_check_button_pressed(mb_left)) {
	instance_create_layer(mouse_x, mouse_y, "layer_text", obj_textbox);
}

//statbar
if(atk_exp >= exp_max) {
	atk_exp = 0;
	level += 1;
	atk_lv += 1;
}
if(def_exp >= exp_max) {
	def_exp = 0;
	level += 1;
	def_lv += 1;
}
if(spd_exp >= exp_max) {
	spd_exp = 0;
	level += 1;
	spd_lv += 1;
}
if(spl_exp >= exp_max) {
	spl_exp = 0;
	level += 1;
	spl_lv += 1;
}

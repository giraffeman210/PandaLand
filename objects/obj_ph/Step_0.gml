/// @desc Main Step Event


if(!normalsprite){
	if keyboard_check_pressed(vk_anykey){
		normalsprite = true;
		sprite_index = spr_ph;
	}	
}

//Attack
//We want to make sure panda is not attacking already
if (keyboard_check_pressed(vk_enter) && !attacking) {	
	staff = instance_create_layer(x+(64 * sign(image_xscale)), y, "layer_player", obj_staff);
	if (image_xscale == -1) {
		staff.image_xscale = -1;	
	}
	sprite_index = spr_phattack;
	attacking = true;
	audio_play_sound(attack, 10, false)
	alarm[0] = room_speed * .2;
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

if (lastkeydown == "left")
{
	//Flip sprite to match direction
	image_xscale = -1;
	if (attacking){
		staff.x = x - 64;
		staff.image_xscale = -1;	
	}
	hsp = -walksp;	
}
if (lastkeydown == "right")
{
	//Flip sprite to match direction
	image_xscale = 1;
	if (attacking){
		staff.x = x + 64;
		staff.image_xscale = 1;	
	}
	hsp = walksp;
}
if attacking and place_meeting(x,y+1,obj_basewall) exit;
if (lastkeydown == "")
{
	hsp = 0;
}




//Jump
if (place_meeting(x,y+1,obj_basewall) && keyboard_check_pressed(vk_space))
{
	if (happy = false) {
		sprite_index = spr_phjump;
	}
	if (happy = true) {
		sprite_index = spr_phjumphappy;
	}
	vsp = initjumpvelocity;
	audio_play_sound(jump, 10, false);
	
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
if(normalsprite) {
	if(hsp == 0){
		image_speed = 0;
		image_index = 0;
	}
	else {
		image_speed = 1;
	}
}


//Vertical Collision
if (place_meeting(x,y+vsp,obj_basewall))
{
	while (!place_meeting(x,y+sign(vsp),obj_basewall))
	{
			y = y + sign(vsp);
	}
	if (sign(vsp) != -1 and !attacking and normalsprite) {
		if(!happy){
			sprite_index = spr_ph;
		}
		if(happy) {
			if(!happyalarm) {
				sprite_index = spr_phhappy;
				alarm_set(1, 60);
				happyalarm = true;
			}
		}
	}
	vsp = 0;
}

if (attacking) {
	staff.x = staff.x + hsp;
	staff.y = staff.y + vsp;
}

x = x + hsp;
y = y + vsp;

//show_debug_message(hsp);
if(hsp != 0 || vsp != 0) {
	alarm[2] = room_speed * 15;
}


//statbar
if(global.atk_exp >= exp_max) {
	global.atk_exp = 0;
	global.level += 1;
	global.atk_lv += 1;
	global.levelup = true;
	instance_create_layer(other.x, (other.y-32), "layer_text", obj_levelup);
	audio_play_sound(level_up, 10, false);
}
if(global.def_exp >= exp_max) {
	global.def_exp = 0;
	global.level += 1;
	global.def_lv += 1;
	hpmax += 1;
	hp += 1;
	instance_create_layer(other.x, (other.y-32), "layer_text", obj_levelup);
	audio_play_sound(level_up, 10, false);
}
if(global.spd_exp >= exp_max) {
	global.spd_exp = 0;
	global.level += 1;
	global.spd_lv += 1;
	instance_create_layer(other.x, (other.y-32), "layer_text", obj_levelup);
	audio_play_sound(level_up, 10, false);
}
if(global.spl_exp >= exp_max) {
	global.spl_exp = 0;
	global.level += 1;
	global.spl_lv += 1;
	spl_count += 20;
	instance_create_layer(other.x, (other.y-32), "layer_text", obj_levelup);
	audio_play_sound(level_up, 10, false);
}

//death
if(hp <= 0) {
	audio_stop_all();
	room_restart();
}
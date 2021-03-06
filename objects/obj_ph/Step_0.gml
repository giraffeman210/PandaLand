/// @desc Main Step Event
if (dead) {
	if (sprite_index = spr_phdead1) {
		vsp -= grv;
		if script_floorcollision(vsp) vsp = 0;
		y += vsp;	
	}
	exit;
}
if (won) {
	x += 2;
	invincible = true;
	sprite_index = spr_ph;
	exit;
}
if (stopcontrols) {
	script_phstopcontrols();
	exit;
}


//block
//if (keyboard_check(ord("S"))) {
//	if (keyboard_check_pressed(vk_enter)) {
//		if (!blocking) {
//			blocker = instance_create_layer(x + (sprite_width / 2), y, "layer_player", obj_phblock);
//			blocker.image_xscale = image_xscale;
//		}
//		if (attacking) {
//			attacking = false;
//			instance_destroy(staff);
//		}
//		blockswitch = true;
//		blocking = true;
//		alarm[4] = room_speed * .25;
//	}
//}
////Attack
//else if (keyboard_check_pressed(vk_enter)) {
//	//We want to make sure panda is not attacking already
//	if (!attacking) {
//		staff = instance_create_layer(x+(64 * sign(image_xscale)), y, "layer_player", obj_staff);
//		if (image_xscale == -1) {
//			staff.image_xscale = -1;	
//		}
//		if (blocking) {
//			blocking = false;
//			instance_destroy(obj_phblock);
//		}
//		attacking = true;
//		audio_play_sound(attack, 10, false)
//		alarm[0] = room_speed * .2;
//	}
//}
//Attack
//We want to make sure panda is not attacking already
if (keyboard_check_pressed(vk_enter) && !attacking) {	
	staff = instance_create_layer(x+(64 * sign(image_xscale)), y, "layer_player", obj_staff);
	if (image_xscale == -1) {
		staff.image_xscale = -1;	
	}
	if (blocking) {
		blocking = false;
		instance_destroy(obj_phblock);
	}
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
	else if (blocking) {
		blocker.x -= 64;
		blocker.image_xscale = -1;
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
	else if (blocking) {
		blocker.x += 64;
		blocker.image_xscale = 1;
	}
	
	hsp = walksp;
}
if (lastkeydown == "")
{
	hsp = 0;
}
if blocking blocker.x = x + (sprite_width / 2);


var platformtop = instance_place(x, y + 1, obj_platformfloat);
if platformtop != noone {
	onplatform = true;
	if !script_wallcollision(platformtop.movespd) extraspd += platformtop.movespd;
	if (attacking) staff.x += extraspd;
	if (blocking) blocker.x += extraspd;
}
//Jump
if place_meeting(x,y+1,obj_basewall) or onplatform{
	grounded = 1;
}
else {
	grounded = 0;	
}
if (grounded && keyboard_check_pressed(vk_space))
{
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

//block
if (keyboard_check_pressed(220)) {
		if (!blocking) {
			blocker = instance_create_layer(x + (sprite_width / 2), y, "layer_player", obj_phblock);
			blocker.image_xscale = image_xscale;
		}
		if (attacking) {
			attacking = false;
			instance_destroy(staff);
		}
		blockswitch = true;
		blocking = true;
		alarm[4] = room_speed * .25;
}


//Gravity pulls down player
vsp = vsp - grv;


//Horizontal Collision
if (script_wallcollision(hsp)) {
	hsp = 0;
}

var platformsides = instance_place(x + hsp, y, obj_platformfloat);
if platformsides != noone {
	while (!place_meeting(x+sign(hsp),y,obj_platformfloat))
	{
			x = x + sign(hsp);
	}
	if sign(hsp) != sign(platformsides.movespd) {
		x += platformsides.movespd;
		extraspd = 0;
	}
	hsp = 0;
}
if (attacking or blocking) and grounded and not onplatform{
	hsp = 0;
}
x = x + hsp + extraspd;
//Vertical Collision
if (script_floorcollision(vsp))
{
	vsp = 0;
}

//var platformsides = instance_place(x + hsp, y, obj_platformfloat);
//if platformsides != noone {
//	while (!place_meeting(x+sign(hsp),y,obj_platformfloat))
//	{
//			x = x + sign(hsp);
//	}
//	if sign(hsp) != sign(platformsides.movespd) {
//		x += platformsides.movespd;
//		extraspd = 0;
//	}
//	hsp = 0;
//}


if (place_meeting(x, y + vsp, obj_platformfloat)) {
	while (!place_meeting(x,y+sign(vsp),obj_platformfloat))
	{
			y = y + sign(vsp);
	}
	vsp = 0;
	//grounded = 1;
	onplatform = true;
}
if ((place_meeting(x + 1 , y, obj_platformfloat) or place_meeting(x - 1, y, obj_platformfloat)) and 
	(place_meeting(x + 1, y, obj_basewall) or place_meeting(x - 1, y, obj_basewall))) {
	script_phdead();
	exit;
}


//if (attacking or blocking) and grounded and not onplatform{
//	hsp = 0;
//}
if (attacking) {
	staff.x += hsp;
	staff.y += vsp;
}
if (blocking) {
	blocker.x += hsp;
	blocker.y += vsp;
}


y = y + vsp;

if (y > room_height + 64) {
	script_phdead(false);
}
//animations
if sprite_index != spr_phinvisible {
	if blocking {
		image_speed = 0;
		sprite_index = spr_phblock;
		if blockswitch {
			blockswitch = false;
			if image_index == 0 image_index = 1;
			else image_index = 0;
		}
	}
	else if attacking {
		sprite_index = spr_phattack;	
	}
	//get the sprite from list by using key value pairs. spritetype determines which set of sprites
	//we want to use. Grounded gets either standing or jumping sprite by index.
	else {
		if !afk{
			sprite_index = ds_map_find_value(spritemap, spritetype)[grounded];
			if(hsp == 0){
				image_speed = 0;
				image_index = 0;
			}
			else {
				image_speed = 1;
			}
		}
	}
}



if(hsp != 0 || vsp != 0) {
	afk = false;
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
	walksp += 1;
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
//if(hp <= 0) {
//	script_phdead();
//	//dead = true;	
//	//audio_stop_all();
//	//audio_play_sound(player_dead, 10, false);
//	//image_speed = 1;
//	//sprite_index = choose(spr_phdead1, spr_phdead2, spr_phdead3);
//	//alarm_set(3, 180);
//}
/// @desc Initilize Variables for Panda Hero

hsp = 0;
vsp = 0;
initjumpvelocity = -14.3;
jumpheight = 160;
minjumpheight = 32;
grv = -0.64;
walksp = 6;
leftkeydown = false;
rightkeydown = false;
lastkeydown = "";
termvelocity = sqrt(sqr(initjumpvelocity) + 2*grv*(jumpheight - minjumpheight));
attacking = false;
invincible = true;
exp_max = 5;
health_bar_width = 252;
health_bar_height = 16;
healthbar_x = 96;
healthbar_y = 48;
money = 0;
hpmax = (1 + global.def_lv);
hp = hpmax;
spl_count = (global.spl_lv*20);
happy = false;
happyalarm = false;
stillanimation = 0;
hp = (1 + global.def_lv);
normalsprite = true;

//Create Sage Ghost
if (room == room_pandafalls) {
	instance_create_layer((obj_ph.x - 64), (obj_ph.y - 32), "layer_player", obj_sage);
}
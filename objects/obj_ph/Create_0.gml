/// @desc Initilize Variables for Panda Hero
afk = false;
blocking = false;
dead = false;
hsp = 0;
hspcarry = 0;
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
invincible = false;
exp_max = 5;
health_bar_width = 252;
health_bar_height = 16;
healthbar_x = 96;
healthbar_y = 48;
money = 0;
hpmax = (1 + global.def_lv);
hp = hpmax;
spl_count = (global.spl_lv*20);
//happy = false;
happyalarm = false;
hp = (1 + global.def_lv);
//normalsprite = true;
grounded = 1;
spritetype = "normal";
spritemap = ds_map_create();
//ds_map_add(spritemap, "normal", [spr_ph, spr_phjump]);
//ds_map_add(spritemap, "happy", [spr_phhappy, spr_phjumphappy]);
ds_map_add(spritemap, "normal", [spr_phjump, spr_ph]);
ds_map_add(spritemap, "happy", [spr_phjumphappy, spr_phhappy]);
//ds_map_add(spritelist, "normal", [spr_phhit, ]);
onplatform = false;
//Create Sage Ghost
if (room == room_pandafalls) {
	instance_create_layer((obj_ph.x - 64), (obj_ph.y - 32), "layer_player", obj_sage);
}
/// @description Health Bar

draw_set_color(c_black)
draw_set_font(fnt_text)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_text(160, 16,"LEVEL")
draw_text(256, 16,(global.level));
draw_text(936, 18, (money));

draw_set_font(fnt_textlg)
draw_text(896, 16, "$:");

draw_set_font(fnt_textsm)
draw_text(16, 50, "ATK");
draw_text(68, 50, (global.atk_lv));
draw_text(16, 82, "DEF");
draw_text(68, 82, (global.def_lv));
draw_text(16, 114, "SPD");
draw_text(68, 114, (global.spd_lv));
draw_text(16, 146, "SPL");
draw_text(68, 146, (global.spl_lv));

draw_sprite(spr_statbarred,0, healthbar_x, (healthbar_y + 2));
draw_sprite_stretched(spr_statbarred,0, healthbar_x, (healthbar_y + 2), min((global.atk_exp/exp_max) * health_bar_width, health_bar_width), health_bar_height);
draw_sprite(spr_statbar,0, healthbar_x, healthbar_y);

draw_sprite(spr_statbarblue,0, healthbar_x, (healthbar_y + 34));
draw_sprite_stretched(spr_statbarblue,0, healthbar_x, (healthbar_y + 34), min((global.def_exp/exp_max) * health_bar_width, health_bar_width), health_bar_height);
draw_sprite(spr_statbar,0, healthbar_x, (healthbar_y + 32));

draw_sprite(spr_statbaryellow,0, healthbar_x, (healthbar_y + 66));
draw_sprite_stretched(spr_statbaryellow,0, healthbar_x, (healthbar_y + 66), min((global.spd_exp/exp_max) * health_bar_width, health_bar_width), health_bar_height);
draw_sprite(spr_statbar,0, healthbar_x, (healthbar_y + 64));

draw_sprite(spr_statbargreen,0, healthbar_x, (healthbar_y + 98));
draw_sprite_stretched(spr_statbargreen,0, healthbar_x, (healthbar_y + 98), min((global.spl_exp/exp_max) * health_bar_width, health_bar_width), health_bar_height);
draw_sprite(spr_statbar,0, healthbar_x, (healthbar_y + 96));

draw_sprite(spr_itembox, 0, 736, 16);
draw_sprite(spr_wpbasic, 0, 736, 16);

if(global.def_lv >= 1) {
	if(hp >= 2) {
		draw_sprite(spr_extrahit, 0, 368, 16); 
	}
	else
	{ 
		draw_sprite(spr_extrahitempty, 0, 368, 16);
	}
}

if(global.def_lv >= 2) {
	if(hp >= 3) {
		draw_sprite(spr_extrahit, 0, 438, 16); 
	}
	else
	{ 
		draw_sprite(spr_extrahitempty, 0, 438, 16);
	}
}

if(global.def_lv >= 3) {
	if(hp >= 4) {
		draw_sprite(spr_extrahit, 0, 510, 16); 
	}
	else
	{ 
		draw_sprite(spr_extrahitempty, 0, 510, 16);
	}
}

if(global.def_lv >= 4) {
	if(hp >= 5) {
		draw_sprite(spr_extrahit, 0, 582, 16); 
	}
	else
	{ 
		draw_sprite(spr_extrahitempty, 0, 582, 16);
	}
}	

if(global.def_lv >= 5) {
	if(hp >= 6) {
		draw_sprite(spr_extrahit, 0, 654, 16); 
	}
	else
	{ 
		draw_sprite(spr_extrahitempty, 0, 654, 16);
	}
}	

if(global.spl_lv >= 1) {
	draw_set_font(fnt_textlg);
	draw_text(735, 148, "SPL:");
	draw_text(820, 148, (spl_count));
}
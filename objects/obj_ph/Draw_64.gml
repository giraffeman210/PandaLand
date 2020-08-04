/// @description Health Bar

draw_set_color(c_black)
draw_set_font(fnt_text)
draw_text(160, 16,"LEVEL")
draw_text(256, 16,(level));
draw_text(936, 18, (money));

draw_set_font(fnt_textlg)
draw_text(896, 16, "$:");

draw_set_font(fnt_textsm)
draw_text(16, 50, "ATK");
draw_text(68, 50, (atk_lv));
draw_text(16, 82, "DEF");
draw_text(68, 82, (def_lv));
draw_text(16, 114, "SPD");
draw_text(68, 114, (spd_lv));
draw_text(16, 146, "SPL");
draw_text(68, 146, (spl_lv));

draw_sprite(spr_statbarred,0, healthbar_x, healthbar_y);
draw_sprite_stretched(spr_statbarred,0, healthbar_x, healthbar_y, min((atk_exp/exp_max) * health_bar_width, health_bar_width), health_bar_height);
draw_sprite(spr_statbar,0, healthbar_x, healthbar_y);

draw_sprite(spr_statbarblue,0, healthbar_x, (healthbar_y + 32));
draw_sprite_stretched(spr_statbarblue,0, healthbar_x, (healthbar_y + 32), min((def_exp/exp_max) * health_bar_width, health_bar_width), health_bar_height);
draw_sprite(spr_statbar,0, healthbar_x, (healthbar_y + 32));

draw_sprite(spr_statbaryellow,0, healthbar_x, (healthbar_y + 64));
draw_sprite_stretched(spr_statbaryellow,0, healthbar_x, (healthbar_y + 64), min((spd_exp/exp_max) * health_bar_width, health_bar_width), health_bar_height);
draw_sprite(spr_statbar,0, healthbar_x, (healthbar_y + 64));

draw_sprite(spr_statbargreen,0, healthbar_x, (healthbar_y + 96));
draw_sprite_stretched(spr_statbargreen,0, healthbar_x, (healthbar_y + 96), min((spl_exp/exp_max) * health_bar_width, health_bar_width), health_bar_height);
draw_sprite(spr_statbar,0, healthbar_x, (healthbar_y + 96));

draw_sprite(spr_itembox, 0, 736, 16);
draw_sprite(spr_wpbasic, 0, 736, 16);
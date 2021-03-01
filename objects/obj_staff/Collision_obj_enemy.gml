/// @description Insert description here
// You can write your code in this editor
hitid = ds_list_find_index(hitlist, other.id);
if hitid == -1 {
	if (other.hit) exit;
	ds_list_add(hitlist, other.id);
	other.hp--;
	other.alarm[0] = room_speed * 1;
	other.hit = true;
	var hitheight = (32 + (32 * global.atk_lv));
	var initsmackvelocity = sqrt(2 * abs(other.grv) * hitheight);
	var timetoapex = abs(initsmackvelocity / other.grv);
	other.hitspeed = ((64 + (64 * global.atk_lv)) / (timetoapex * 2))* sign(image_xscale);
	other.vsp = -initsmackvelocity;
	other.movepoint = other.x + ((64 + (64 * global.atk_lv)) * sign(image_xscale));
	//show_debug_message(other.hp);
	audio_play_sound(enemy_hit, 10, false);
}

/// @description Insert description here
// You can write your code in this editor
hitid = ds_list_find_index(hitlist, other.id);
if hitid == -1 {
	ds_list_add(hitlist, other.id);
	other.hp--;
	other.alarm[0] = room_speed * .5;
	other.hit = true;
	other.hitspeed = hitspeed * sign(image_xscale);
	other.movepoint = x + ((64 + (64 * global.atk_lv)) * sign(image_xscale));
	//show_debug_message(other.hp);
	audio_play_sound(enemy_hit, 10, false);
}

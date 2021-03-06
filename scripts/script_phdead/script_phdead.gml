function script_phdead(){
	if argument_count == 1 var animate = false;
	else var animate = true;
	dead = true;	
	audio_stop_all();
	audio_play_sound(player_dead, 10, false);
	if (animate) {
		image_speed = 1;
		sprite_index = choose(spr_phdead1, spr_phdead2, spr_phdead3);
		//sprite_index = spr_phdead1;
		if (sprite_index = spr_phdead3) {
			path_start(path_playerdead, 2, path_action_continue, false);	
		}
	}
	alarm_set(3, 180);
}
function script_phdead(){
	dead = true;	
	audio_stop_all();
	audio_play_sound(player_dead, 10, false);
	image_speed = 1;
	sprite_index = choose(spr_phdead1, spr_phdead2, spr_phdead3);
	alarm_set(3, 180);
}
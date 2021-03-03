/// @description Insert description here
// You can write your code in this editor
//show_debug_message(text[page]);
//show_debug_message(maxwidth);
currentpage = script_wrap(text[page], maxwidth);
//show_debug_message(currentpage);
//nameHeight = string_height(name);
audio_play_sound(sounds[page], 10, false);
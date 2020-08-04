/// @description Insert description here
if (keyboard_check_pressed (vk_enter)) {
	//only increase page, if page + 1, in less than total number of entries
	if(charCount < string_length(text[page])) {
		charCount = string_length(text[page])
	}
			
	else if (page+1 < array_length_1d(text)) {
	page += 1;
	charCount = 0;
	} else {
		instance_destroy()
		creator.mytextbox = noone
	}
}
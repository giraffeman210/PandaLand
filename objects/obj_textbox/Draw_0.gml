/// @description Insert description here

draw_set_font(fnt_text);
draw_set_colour(c_black);
draw_set_halign(fa_left);
//draw textbox
//draw_rectangle(x + 16, y + 272, x+boxWidth+2, y+boxHeight+2, false);
draw_sprite(spr_textbox, 0, x + 16, y);
//draw_sprite(spr_textboxboarder1, 0, x + 10, y - 6);
//draw_sprite(spr_textboxboarder2, 0, x - 30, y - 38);
draw_sprite(spr_textboxboarder3, 0, x - 10, y - 22);

if (currentpage == "") {
	event_user(0);	
}

//draw text
if(charCount < string_length (currentpage)) {
	charCount += 0.5;
	//audio_play_sound(sounds[random_range(0, 2)], 10, false);
}
textPart = string_copy(currentpage, 1, charCount);

//Draw the name
//draw_set_colour(c_yellow)
//draw_set_halign(fa_center)
//draw_text(x+(boxWidth/2), y+ybuffer, name);

// show_debug_message(string_width(y+nameHeight+ybuffer));
//Draw part of the text

//show_debug_message(string_width(textPart));
draw_text(x+xbuffer,y+ybuffer, textPart);
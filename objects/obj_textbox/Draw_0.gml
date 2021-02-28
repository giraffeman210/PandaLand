/// @description Insert description here

draw_set_font(fnt_text);
//draw textbox
draw_rectangle(x + 16, y + 272, x+boxWidth+2, y+boxHeight+2, false);
draw_sprite(spr_textbox, 0, x + 16, y + 272);

//draw text
if(charCount < string_length (currentpage)) {
	charCount += 0.5;
}
textPart = string_copy(currentpage, 1, charCount);

//Draw the name
draw_set_colour(c_yellow)
draw_set_halign(fa_center)
draw_text(x+(boxWidth/2), y+ybuffer, name);

// show_debug_message(string_width(y+nameHeight+ybuffer));
//Draw part of the text
draw_set_colour(c_white)
draw_set_halign(fa_left)
//show_debug_message(string_width(textPart));
draw_text(x+xbuffer,y+nameHeight+ybuffer, textPart);
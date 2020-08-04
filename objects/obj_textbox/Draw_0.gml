/// @description Insert description here
// You can write your code in this editor

//draw textbox
draw_rectangle(x-2, y-2, x+boxWidth+2, y+boxHeight+2, false);
draw_sprite(spr_textbox, 0, x, y);

//draw text
draw_set_font(fnt_text)

if(charCount < string_length (text[page])) {
charCount += 0.5;
}
textPart = string_copy(text[page], 1, charCount);

//Draw the name
draw_set_colour(c_yellow)
draw_set_halign(fa_center)
draw_text(x+(boxWidth/2), y+ybuffer, name);

//Draw part of the text
draw_set_colour(c_white)
draw_set_halign(fa_left)
draw_text_ext(x+xbuffer,y+stringHeight+ybuffer, textPart, stringHeight, boxWidth - (2*xbuffer));
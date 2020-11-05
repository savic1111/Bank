/// @description Insert description here
// You can write your code in this editor

draw_sprite(SprTextBox,0,x,y);


draw_set_font(fnt_text);
draw_set_color(c_black);


if(charCount<string_length(text[page]))
{
charCount+=0.5;
}
textPart = string_copy(text[page],1,charCount);

draw_set_halign(fa_center);
draw_text(x+(boxWidth/2),y+9,name);

draw_set_halign(fa_left);
draw_text_ext(x+7,y+stringHeight+5,textPart,stringHeight,boxWidth-10);

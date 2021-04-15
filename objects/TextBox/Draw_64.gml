/// @description Insert description here
// You can write your code in this editor

draw_sprite(box,0,box_x,box_y);

draw_sprite(frame,0,frame_x,frame_y);

draw_sprite(portrait,0,frame_x,frame_y);

draw_sprite(frame,1,frame_x,frame_y);

draw_sprite(namebox,0,namebox_x,namebox_y);

draw_set_font(font);

var c = name_text_col;
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_color(nametext_x,nametext_y,name_[namePage],c,c,c,c,1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

c = text_col;
draw_text_ext_color(text_x,text_y,text[page],text_height,text_max_width,c,c,c,c,1);

show_debug_message(namePage)
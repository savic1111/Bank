/// @description Insert description here
// You can write your code in this editor
box = SprTextBox;
frame = spr_portrait_frame;
portrait = SprWeapon1;
namebox = spr_namebox;

gui_height = display_get_gui_height();

box_width = sprite_get_width(box);
box_height = sprite_get_height(box);

port_width = sprite_get_width(portrait);
port_height = sprite_get_height(portrait);

namebox_width = sprite_get_width(namebox);
namebox_height = sprite_get_height(namebox);

box_x = (1920 - box_width - port_width)*0.8;
box_y = (gui_height*0.08) - port_height;

frame_x = box_x - namebox_width/1.5;
frame_y = box_y+box_height/2;

namebox_x = frame_x-frame_x/2;
namebox_y = frame_y - frame_y/1.5;

x_buffer = 26;
y_buffer = 20;

text_x = box_x + x_buffer;
text_y = box_y + y_buffer;

nametext_x = namebox_x + (namebox_width/2);
nametext_y = namebox_y + (namebox_height/2);

text_max_width = box_width - (3*x_buffer);



text[1] = "this is a test this is a test  ww uwfethis is a test this is a test this is a test this is a test this is a test this is a test this is a test this is a test this is a test this is a test  ww uwfethis is a test this is a test this is a test this is a test this is a test this is a test this is a test this is a test this is a test this is a test  ww uwfethis is a test this is a test this is a test this is a test this is a test this is a test this is a test this is a test ";
text[2] ="Second";
page = 1;

name_[0] = "Sam";
name_[1] = "Lena";
name_[2] = "name";

namePage = 0;


interact_key = ord("Y");

text_col = c_black;
name_text_col = c_black;
font = fnt_text;

draw_set_font(font);
text_height = string_height("M");
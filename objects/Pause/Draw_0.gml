/// @description Insert description here
// You can write your code in this editor
if(global.pause) 
{
	draw_set_color(c_black);
	draw_set_alpha(0.7);
	draw_rectangle(0,1000,room_width,-2000,0);
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_text(room_width/2,room_height/2,"Game is paused");
	draw_set_color(c_black);
}

show_debug_message(global.pause);


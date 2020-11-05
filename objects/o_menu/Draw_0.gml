/// @description Insert description here
// You can write your code in this editor
var i = 0;
repeat(buttons){
	draw_set_font(fnt_menu);
	draw_set_halign(fa_center);
	draw_set_color(c_ltgray);
	var view_w_half = camera_get_view_width(view_camera[0])*0.5;
	if(menu_index == i) draw_set_color(c_red);
	draw_text(1920,menu_y+button_h*i,button[i]);
	i++;
}
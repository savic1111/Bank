/// @description Insert description here
// You can write your code in this editor
x_=camera_get_view_x(view_camera[0])+3200;
y_=camera_get_view_y(view_camera[0]) + 100;

var i =0;
repeat(conditions)
{
	draw_set_font(fnt_menu);
	draw_set_halign(fa_center);
	draw_set_color(c_ltgray);
	
	draw_text(x_+60,y_+condition_h*i,condition[i]);

	i++
}

/// @description Insert description here
// You can write your code in this editor
x_=camera_get_view_x(view_camera[0])+80;
y_=camera_get_view_y(view_camera[0]) + 100;
var i = 0;

repeat(choices)
{
	draw_set_font(fnt_menu);
	draw_set_halign(fa_center);
	draw_set_color(c_ltgray);
	
	if(choice_index == i) draw_set_color(c_red);
	draw_text(x_+60,y_+choice_h*i,choice[i]);
	draw_sprite_stretched(SprHealthBar,0,x_+150,y_+choice_h*i,min((ability[i]/ability_max[i])*300,800), 40);
	draw_sprite(SprHealthBarBorder,0,x_+150,y_+choice_h*i);
	i++;
}

    draw_sprite_stretched(SprHealthBar,0,x_+150,y_+choice_h*3,min((points1/points_max)*300,800), 40);
	draw_sprite(SprHealthBarBorder,0,x_+150,y_+choice_h*3);


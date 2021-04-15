/// @description Insert description here
// You can write your code in this editor
x_=camera_get_view_x(view_camera[0])+600;
y_=camera_get_view_y(view_camera[0]) + 300;
draw_sprite_stretched(SprUpBar,0,x_,y_,min((timeUp/timeUpMax)*300,800), 40);
draw_sprite(SprHealthBarBorder,0,x_,y_);
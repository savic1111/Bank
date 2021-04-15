/// @description Insert description here
// You can write your code in this editor
surface_set_target(light1);
draw_set_color(c_ltgray);
draw_rectangle(0,0,camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]),false);
surface_reset_target();
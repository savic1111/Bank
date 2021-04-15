// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function WhiteScreen(){
    draw_set_color(c_white);
	draw_set_alpha(1);	
	//draw_rectangle_color(0,0,camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]),c_black,c_black,c_black,c_black,false)
	draw_rectangle(camera_get_view_x(view_camera[0])+3920,camera_get_view_y(view_camera[0])+1960,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),false);
}
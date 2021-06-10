// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function Light(){
	size = 728;
	gpu_set_blendmode(bm_subtract);
	surface_set_target(global.light);
	draw_ellipse_color(argument0-size/2-camera_get_view_x(view_camera[0]),argument1-size/2-camera_get_view_y(view_camera[0]),argument0+size/2-camera_get_view_x(view_camera[0]),argument1+size/2-camera_get_view_y(view_camera[0]),c_orange,c_black,false);
	surface_reset_target();
	gpu_set_blendmode(bm_normal);

}
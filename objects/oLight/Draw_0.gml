/// @description Insert description here
// You can write your code in this editor
gpu_set_blendmode(bm_subtract);
draw_surface(light1,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]));
gpu_set_blendmode(bm_normal);
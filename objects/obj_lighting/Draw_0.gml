/// @description Insert description here
// You can write your code in this editor
draw_text(x,y,view_wview);
gpu_set_blendmode(bm_subtract);
draw_surface(global.light,0,0);
gpu_set_blendmode(bm_normal);

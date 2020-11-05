/// @description Insert description here
// You can write your code in this editor
draw_sprite(spr_dust,0,0,0);
draw_sprite_ext(SprExperiment,0,256+4,256+4,1,1,0,c_black,0.5);
draw_sprite(SprExperiment,0,256,256);


gpu_set_blendenable(false);
gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(0);
draw_rectangle(0,0,128,128,false);
draw_set_alpha(1);
draw_sprite(SprMask,0,256,256);
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);
gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);
draw_sprite(sprBall,0,x,y);
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
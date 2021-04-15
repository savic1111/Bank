/// @description Insert description here
// You can write your code in this editor
draw_surface(application_surface,0,0);





shader_set(shWater);

shader_set_uniform_f(u_resolution,1920.0,1080.0);
shader_set_uniform_f(u_seconds,sec);
draw_rectangle(0,0,1920,1080,false);
    shader_reset();
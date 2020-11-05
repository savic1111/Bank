/// @description Insert description here
// You can write your code in this editor
draw_surface(application_surface,0,0);
shader_set(shSun);

shader_set_uniform_f(u_resolution,1220.0,680.0);
shader_set_uniform_f(u_seconds,sec);

draw_rectangle(0,0,1920,1080,false);
    shader_reset();
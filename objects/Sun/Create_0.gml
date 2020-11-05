/// @description Insert description here
// You can write your code in this editor
application_surface_draw_enable(false);
u_resolution = shader_get_uniform(shWater,"iResolution");
u_seconds = shader_get_uniform(shWater,"iTime");
sec = 0;
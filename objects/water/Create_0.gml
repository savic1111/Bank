/// @description Insert description here
// You can write your code in this editor
application_surface_draw_enable(false);
u_resolution = shader_get_uniform(shWater,"iResolution");
u_seconds = shader_get_uniform(shWater,"iGlobalTime");
u_resolution_water = shader_get_uniform(shUnderWater,"iResolution");
u_seconds_water = shader_get_uniform(shUnderWater,"iGlobalTime");

u_texture_water = shader_get_sampler_index(shUnderWater,"tex_water");

surf_water = surface_create(1920,1080);
sec = 0;
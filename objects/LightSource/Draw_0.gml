/// @description Insert description here
// You can write your code in this editor
gpu_set_blendmode(bm_add);
shader_set(shGlowColor);
var red = shader_get_uniform(shGlowColor, "u_fRed");
var green = shader_get_uniform(shGlowColor, "u_fGreen");
var blue = shader_get_uniform(shGlowColor, "u_fBlue");
var alpha = shader_get_uniform(shGlowColor, "u_fAlpha");
shader_set_uniform_f(red, 0.3);
shader_set_uniform_f(green, 0.8);
shader_set_uniform_f(blue, 1);
shader_set_uniform_f(alpha, 1);
draw_sprite_ext(SprLight, 0, x, y, 1, 1, 0, c_white, 1);
shader_reset();
gpu_set_blendmode(bm_normal);
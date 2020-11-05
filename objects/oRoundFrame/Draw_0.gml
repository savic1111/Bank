/// @description Insert description here
// You can write your code in this editor
draw_self();



surface = surface_create(sprite_width,sprite_height);

if(surface_exists(surface))
{
surface_set_target(surface);
draw_clear_alpha(c_black,0);

draw_sprite_ext(SprMainhero,0,x,y,1,-1,0,c_white,0.6);





surface_reset_target();
draw_surface(surface,x,y);
surface_free(surface);
}





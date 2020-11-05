/// @description Insert description here
// You can write your code in this editor
draw_self();

if(place_meeting(x,y-1,TestMainhero)){
	surface_player = surface_create(sprite_width,sprite_height);
	if(surface_exists(surface_player))
	{
		surface_set_target(surface_player);
		draw_clear_alpha(c_black,0);
		
		with(TestMainhero){
			draw_sprite_ext(sprite_index,image_index,x-other.x,y-other.y+100,1,-1,0,c_white,0.6);
		}
		
		gpu_set_blendmode(bm_subtract);
		draw_sprite(sprite_index,1,0,0);
		gpu_set_blendmode(bm_normal);
		
		surface_reset_target();
		
		draw_surface(surface_player,x,y);
		
		surface_free(surface_player);
	}
}
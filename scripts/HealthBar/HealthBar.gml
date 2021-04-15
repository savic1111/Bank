// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function HealthBar(){
	healthbar_width = 100;
healthbar_height = 14;
draw_sprite_stretched(SprHealthBar,0,argument0.x-5,argument0.y-120,min((argument1/argument2)*healthbar_width,healthbar_width), healthbar_height);
}
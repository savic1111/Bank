/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_set_color(c_white);
if(flash>0)
{
	flash--;
    shader_set(shWhite);
    draw_self();
    shader_reset();
}

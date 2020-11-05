/// @description Insert description here
// You can write your code in this editor
var hover_ =GetHover();
var click_ = hover_ and mouse_check_button_pressed(mb_left);

hover = lerp(hover,hover_,0.1);
y=lerp(y,ystart-hover_*8,0.1);

if(click_ and script>=0)
{
	script_execute(script);
}
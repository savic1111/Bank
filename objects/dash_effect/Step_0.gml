/// @description Insert description here
// You can write your code in this editor

image_alpha -= fade_speed;

if(image_alpha<=0)
{
	instance_destroy();
}
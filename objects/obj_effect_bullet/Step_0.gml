/// @description Insert description here
// You can write your code in this editor
image_alpha -=0.1*global.timeMultiplier;

if(image_alpha<=0)
{
	instance_destroy();
}
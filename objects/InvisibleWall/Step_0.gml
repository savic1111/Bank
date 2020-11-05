/// @description Insert description here
// You can write your code in this editor
var isColliding = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,TestMainhero,0,0);

if(isColliding!= noone)
{
	image_alpha -=addUp;
}else
{
	image_alpha +=addUp;
}

image_alpha = clamp(image_alpha,0.2,1);
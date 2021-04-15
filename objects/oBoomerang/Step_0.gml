/// @description Insert description here
// You can write your code in this editor


if(global.pause) 
{
	decrease = 0;
	speed = 0;
	image_angle = 0;
}else
{
	decrease = 0.09;
    image_angle+=spin;
	global.speedBoomerang -= decrease
    speed = global.speedBoomerang;
}

if(place_meeting(x,y,TestMainhero))
{
	instance_destroy();
}

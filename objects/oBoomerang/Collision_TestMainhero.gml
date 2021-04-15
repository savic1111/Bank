/// @description Insert description here
// You can write your code in this editor


if(direction == 0) and (TestMainhero.image_xscale==-1)
{
	with(TestMainhero)
	{
instance_destroy();
	}
} else if(direction == 180) and (TestMainhero.image_xscale==1)
{
	with(TestMainhero)
	{
instance_destroy();
	}
}else
{
	instance_destroy();
}
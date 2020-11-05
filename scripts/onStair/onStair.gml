// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function onStair(){
if(TestMainhero.x>oStair.x-300 && TestMainhero.x<oStair.x-200)
{
	if(keyboard_check_pressed(ord("H")) and onStair = false)
	{
		onStair = true;
	}
}

if(TestMainhero.x>oStair.x+352)
{
	onStair = false;
}

if(TestMainhero.x<oStair.x-350)
{
	onStair = false;
}
}
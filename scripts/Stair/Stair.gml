// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Stair(){
if(MainHero.x>oStair.x-300 && MainHero.x<oStair.x-200)
{
	if(keyboard_check_pressed(ord("H")) and onStair = false)
	{
		onStair = true;
	}
}

if(MainHero.x>oStair.x+352)
{
	onStair = true;
}

if(MainHero.x<oStair.x-350)
{
	onStair = false;
}
show_debug_message(onStair);

}
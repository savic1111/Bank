// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GravityAndJump(){
	if(!instance_exists(TimeController))
	{
		global.timeMultiplier = 1;
	}
	
	
	
if !place_meeting(x,y+1,oGround)
{
	vspeed_+=gravity_*global.timeMultiplier;
	grounded = false;
}else
{
	airjump = 2;
	grounded = true;
if keyboard_check_pressed(vk_up){
	vspeed_=jump_height*(global.timeMultiplier+0.5);
}
}
}
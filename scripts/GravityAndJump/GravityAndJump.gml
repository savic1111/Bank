// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GravityAndJump(){
	
if !place_meeting(x,y+1,oGround)  
{
	vspeed_+=gravity_;
	grounded = false;
}else
{
	airjump = 2;
	grounded = true;


}

if place_meeting(x+1,y,Wall)
{
	airjump = 2;
}

if place_meeting(x-1,y,Wall)
{
	airjump = 2;
}
}


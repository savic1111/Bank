/// @description Insert description here
// You can write your code in this editor




if(collision_rectangle(x,y,x-500,y-800,MasterMainhero,false,true))
{

	slowDown = true;

}else
{

	slowDown = false;
}

if(instance_exists(Bullet))
{
if(!collision_rectangle(x,y,x-500,y-800,Bullet,false,true))
{

	global.obj_.speed = 25;

}else
{

global.obj_.speed = 10;

}
}


/*
if(slowDownBullet == true)
{
	
		global.timeMultiplierB = 0.2;
	
}else
{
	
		global.timeMultiplierB = 1;
	
}

*/
if(slowDown == true)
{
	
		global.timeMultiplier = 0.2;
	
}else
{
	
		global.timeMultiplier = 1;
	
}


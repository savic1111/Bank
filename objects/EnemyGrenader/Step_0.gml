/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor



//XscaleEnemy(x);
	if(global.pause)exit;
if(global.pause==0)
	{
DropGrenade(1,1);
	}
	
	if(health_enemy<=0)
	{
		oConditions.enemy+=1;
		instance_destroy();
	}
switch(state)
{
	case state_enemy.idle:
	{  
		
		
		hspeed_enemy = 0;
		vspeed_enemy = vspeed_enemy + grav;
	}
	break;
}


if (place_meeting(x+hspeed_enemy,y,oGround))
{
	while(!place_meeting(x+sign(hspeed_enemy),y,oGround))
	{
		x=x+sign(hspeed_enemy);
	}	
	hspeed_enemy=0;
}
x+=hspeed_enemy;

if (place_meeting(x,y+vspeed_enemy,oGround))
{
	while(!place_meeting(x,y+sign(vspeed_enemy),oGround))
	{
		y=y+sign(vspeed_enemy);
	}	
	vspeed_enemy=0;
}



y+=vspeed_enemy;

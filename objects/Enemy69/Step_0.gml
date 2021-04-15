/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

xscale(hspeed_enemy);
	
	
switch(state)
{
	case state_enemy.idle:
	{  
		
		ReversePath();
		hspeed_enemy = 1;
		vspeed_enemy = vspeed_enemy + grav;
		
		
	}
	break;
	
}


if (place_meeting(x+hspeed_enemy,y,oGround))
{
	while(!place_meeting(x+sign(hspeed_enemy),y,oG))
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
JumpEnemy();
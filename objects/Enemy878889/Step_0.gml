/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

xscale(hspeed_enemy);
	
	if(global.pause)exit;
switch(state)
{
	case state_enemy.idle:
	{  
		
		ReversePath();
		hspeed_enemy = 1;
		vspeed_enemy = vspeed_enemy + grav;
		
		if(distance_to_object(MainHero)<596) state = state_enemy.chase;
	}
	break;
	case state_enemy.chase:
	{
		//dir = 0;
		dir = sign(MainHero.x-x);
		hspeed_enemy = (dir*10);
		vspeed_enemy = vspeed_enemy+grav;
		if(distance_to_object(MainHero)<196)
		{
			hspeed_enemy=0;
		}
		
		
		if(distance_to_object(MainHero)<190)
		{
			hspeed_enemy = -(dir*4);
		}
		if(distance_to_object(MainHero)<100)
		{
			hspeed_enemy = -(dir*6);
		}
		//if(distance_to_object(TestMainhero)>128) state = state_enemy.idle;
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
JumpEnemy();
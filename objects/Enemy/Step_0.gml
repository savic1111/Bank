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
		
		if(distance_to_object(TestMainhero)<196) state = state_enemy.chase;
	}
	break;
	case state_enemy.chase:
	{
		dir = sign(TestMainhero.x-x);
		hspeed_enemy = (dir*6);
		vspeed_enemy = vspeed_enemy+grav;
		if(distance_to_object(TestMainhero)<196)
		{
			hspeed_enemy=0;
		}
		
		
		if(distance_to_object(TestMainhero)<190)
		{
			hspeed_enemy = -(dir*4);
		}
		if(distance_to_object(TestMainhero)<100)
		{
			hspeed_enemy = -(dir*6);
		}
		//if(distance_to_object(TestMainhero)>128) state = state_enemy.idle;
	}
	break;
}


if (place_meeting(x+hspeed_enemy,y,Wall))
{
	while(!place_meeting(x+sign(hspeed_enemy),y,Wall))
	{
		x=x+sign(hspeed_enemy);
	}	
	hspeed_enemy=0;
}
x+=hspeed_enemy;

if (place_meeting(x,y+vspeed_enemy,Wall))
{
	while(!place_meeting(x,y+sign(vspeed_enemy),Wall))
	{
		y=y+sign(vspeed_enemy);
	}	
	vspeed_enemy=0;
}
y+=vspeed_enemy;
JumpEnemy();
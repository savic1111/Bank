/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor



XscaleEnemy(x);
	
	DropGrenade();
switch(state)
{
	case state_enemy.idle:
	{  
		
		ReversePath();
		hspeed_enemy = 1;
		vspeed_enemy = vspeed_enemy + grav;
		
		if(abs(EnemyGrenader.x-TestMainhero.x)<100) state = state_enemy.chase;
	}
	break;
	case state_enemy.chase:
	{
		dir = sign(TestMainhero.x-x);

if(!place_meeting(x+300*(-image_xscale),y+100,Wall))
{
	state = state_enemy.idle;
}

		hspeed_enemy = (dir*6);
		vspeed_enemy = vspeed_enemy+grav;
	}
		//if(distance_to_object(TestMainhero)>128) state = state_enemy.idle;
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

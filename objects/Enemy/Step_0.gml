/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

xscale(hspeed_enemy);
	
	if(global.pause)exit;
	
	if(health_enemy<=0)
	{
		
		oConditions.enemy+=1;
		o_choice.points1+=EnemyPoint;
		instance_destroy();
		
		with(GunEnemy)
		{
			instance_destroy();
		}
	}
switch(state)
{
	case state_enemy1.idle:
	{  
		
		
		hspeed_enemy = 1;
		vspeed_enemy = vspeed_enemy + grav;
		
		if(distance_to_object(MasterMainhero)<1996) state = state_enemy.chase;
	}
	break;
	case state_enemy1.chase:
	{
		
		
		
		
		//dir = 0;
		dir = sign(MasterMainhero.x-x);
		hspeed_enemy = (dir*10);
		vspeed_enemy = vspeed_enemy+grav;
		if(distance_to_object(MasterMainhero)<196)
		{
			hspeed_enemy=0;
		}
		if !place_meeting(x+120*dir,y+1,oGround)
		{
			hspeed_enemy = 0;
		}
		
		if(abs(x-MasterMainhero.x)<10)
		{
			hspeed_enemy = 0;
		}
		
		if(distance_to_object(MasterMainhero)<190)
		{
			hspeed_enemy = -(dir*4);
		}
		if(distance_to_object(MasterMainhero)<100)
		{
			hspeed_enemy = -(dir*6);
		}

	}
	break;
}

JumpEnemy();

HorizontalCollisionEnemy(Platform);
HorizontalCollisionEnemy(Wall);
x+=hspeed_enemy;


VerticalCollisionEnemy(Platform);
VerticalCollisionEnemy(oGround);
y+=vspeed_enemy;
/// @description Insert description here
// You can write your code in this editor
x = EnemySniper.x-15;
y = EnemySniper.y+7;

image_xscale = abs(EnemySniper.image_xscale);
image_yscale = abs(EnemySniper.image_yscale);

if(instance_exists(MasterMainhero))
{
	if(MasterMainhero.x<x) image_yscale =-image_yscale;
	
		image_angle = point_direction(x,y,MasterMainhero.x,MasterMainhero.y);
		image_angle = point_direction(x,y,MasterMainhero.x,MasterMainhero.y);
		
			
			if(!collision_line(x,y,MasterMainhero.x,MasterMainhero.y,oGround,false,false) and!collision_line(x,y,MasterMainhero.x,MasterMainhero.y,Limit,false,false) )
			{
				onTarget = true;	
		}else
		{
			onTarget = false;
			countdown = countdownrate;
		}
		
		if(onTarget)
		{
			countdown--;
			if(countdown==0)
			{
				with(instance_create_layer(x,y,"Bullets",SniperBullet))
	{
		speed=75;
		//Разброс 
		direction = other.image_angle + random_range(-3,3);
		image_angle=direction
	}
	countdown = countdownrate;
			}
		}
	}
	
        	

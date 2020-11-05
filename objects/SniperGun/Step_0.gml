/// @description Insert description here
// You can write your code in this editor
x = EnemySniper.x;
y = EnemySniper.y+10;

image_xscale = abs(EnemySniper.image_xscale);
image_yscale = abs(EnemySniper.image_yscale);

if(instance_exists(TestMainhero))
{
	if(TestMainhero.x<x) image_yscale =-image_yscale;
	
		image_angle = point_direction(x,y,TestMainhero.x,TestMainhero.y);
		
		
		image_angle = point_direction(x,y,TestMainhero.x,TestMainhero.y);
		
			
			if(!collision_line(x,y,TestMainhero.x,TestMainhero.y,Wall,false,false))
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
				with(instance_create_layer(x,y,"Bullets",EnemyBullet))
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
	
        	

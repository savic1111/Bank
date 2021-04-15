/// @description Insert description here
// You can write your code in this editor

if(instance_exists(Enemy878889))
{
x = Enemy878889.x;
y = Enemy878889.y-10;

image_xscale = abs(Enemy878889.image_xscale);
image_yscale = abs(Enemy87.image_yscale);
if(global.pause==0)
	{

if(instance_exists(MainHero))
{
	if(MainHero.x<x) image_yscale =-image_yscale;
	if(point_distance(MainHero.x,MainHero.y,x,y)<600)
	{
		image_angle = point_direction(x,y,MainHero.x,MainHero.y);
		countdown--;
		
		if(countdown<=0)
		{
			countdown = countdownrate;
			
			if(!collision_line(x,y,MainHero.x,MainHero.y,oGround,false,false))
			{
				if(ammo_enemy>0)
				{
					
			with(instance_create_layer(x,y,"Bullets",EnemyBullet))
	{
		speed=25;
		//Разброс 
		direction = other.image_angle; //+ random_range(-3,3);
		image_angle=direction
	}
	ammo_enemy--;
				}
		}
	}
	}
}
}
}
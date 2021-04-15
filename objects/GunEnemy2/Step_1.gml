/// @description Insert description here
// You can write your code in this editor

if(instance_exists(Enemy))
{
x = owner.x;
y = owner.y-10;

image_xscale = abs(Enemy.image_xscale);
image_yscale = abs(Enemy.image_yscale);

if(instance_exists(TestMainhero))
{
	if(TestMainhero.x<x) image_yscale =-image_yscale;
	if(point_distance(TestMainhero.x,TestMainhero.y,x,y)<600)
	{
		image_angle = point_direction(x,y,TestMainhero.x,TestMainhero.y);
		countdown--;
		
		if(countdown<=0)
		{
			countdown = countdownrate;
			
			if(!collision_line(x,y,TestMainhero.x,TestMainhero.y,Wall,false,false))
			{
				if(ammo_enemy>0)
				{
					
			with(instance_create_layer(x,y,"Bullets",EnemyBullet))
	{
		speed=25;
		//Разброс 
		direction = other.image_angle + random_range(-3,3);
		image_angle=direction
	}
	ammo_enemy--;
				}
		}
	}
	}
}
}
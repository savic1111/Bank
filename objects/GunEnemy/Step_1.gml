/// @description Insert description here
// You can write your code in this editor

if(instance_exists(Enemy))
{
x = Enemy.x;
y = Enemy.y-10;

image_xscale = abs(Enemy.image_xscale);
image_yscale = abs(Enemy.image_yscale);
if(global.pause==0)
	{

if(instance_exists(MasterMainhero))
{
	if(MasterMainhero.x<x) image_yscale =-image_yscale;
	if(point_distance(MasterMainhero.x,MasterMainhero.y,x,y)<1600)
	{
		image_angle = point_direction(x,y,MasterMainhero.x,MasterMainhero.y);
		countdown--;
		
		if(countdown<=0)
		{
			countdown = countdownrate;
			
			if(!collision_line(x,y,MasterMainhero.x,MasterMainhero.y,oGround,false,false))
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
/// @description Insert description here
// You can write your code in this editor
 with(instance_create_layer(x,y,"Bullets",EnemyBullet))
	{
		speed=35;
		//Разброс 
		direction = other.image_angle; //+ random_range(-3,3);
		image_angle=direction
	}
/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

	if(n==205)
		{
			right = true;
			left = false;
		}
		
		if(n==355)
		{
			right = false;
			left = true;
		}
		
		if(right==true)
		{
			n+=2;
		}
		
		if(left==true)
		{
			n-=2;
		}
		
		image_angle =n;
		
		
		countdown--;
		
		if(countdown<=0)
		{
			countdown = countdownrate;
					
	 with(instance_create_layer(x,y,"Bullets",EnemyBullet))
	{
		speed=35;
		//Разброс 
		direction = other.image_angle; //+ random_range(-3,3);
		image_angle=direction
	}		
	}
	


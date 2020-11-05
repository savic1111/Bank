function DropGrenade() {
	if(collision_rectangle(x-600,y+2000,x-500,y+640,TestMainhero,0,0))
	{
	Range_timer--;

	if(Range_timer<=0)
	{
		Range_timer=Range_time;
	
		var grenade = instance_create_layer(x,y,"Gun",Grenade);
		grenade.direction=130;
		grenade.speed = 9 ;
		grenade.gravity = 0.185;
		grenade.gravity_direction=270;
	}

	}
	if(collision_rectangle(x-900,y+2000,x-801,y+640,TestMainhero,0,0))
	{
	Range_timer--;

	if(Range_timer<=0)
	{
		Range_timer=Range_time;
	
		var grenade = instance_create_layer(x,y,"Gun",Grenade);
		grenade.direction=130;
		grenade.speed = 12;
		grenade.gravity = 0.185;
		grenade.gravity_direction=270;
	}

	}

	if(collision_rectangle(x-800,y+2000,x-701,y+640,TestMainhero,0,0))
	{
	Range_timer--;

	if(Range_timer<=0)
	{
		Range_timer=Range_time;
	
		var grenade = instance_create_layer(x,y,"Gun",Grenade);
		grenade.direction=130;
		grenade.speed = 11;
		grenade.gravity = 0.185;
		grenade.gravity_direction=270;
	}

	}

	if(collision_rectangle(x-700,y+2000,x-601,y+640,TestMainhero,0,0))
	{
	Range_timer--;

	if(Range_timer<=0)
	{
		Range_timer=Range_time;
	
		var grenade = instance_create_layer(x,y,"Gun",Grenade);
		grenade.direction=130;
		grenade.speed = 10;
		grenade.gravity = 0.185;
		grenade.gravity_direction=270;
	}

	}

	if(collision_rectangle(x-499,y+2000,x-399,y+640,TestMainhero,0,0))
	{
	Range_timer--;

	if(Range_timer<=0)
	{
		Range_timer=Range_time;
	
		var grenade = instance_create_layer(x,y,"Gun",Grenade);
		grenade.direction=130;
		grenade.speed = 7.4;
		grenade.gravity = 0.185;
		grenade.gravity_direction=270;
	}

	}
	
	if(collision_rectangle(x-399,y+2000,x-299,y+640,TestMainhero,0,0))
	{
	Range_timer--;

	if(Range_timer<=0)
	{
		Range_timer=Range_time;
	
		var grenade = instance_create_layer(x,y,"Gun",Grenade);
		grenade.direction=130;
		grenade.speed = 5;
		grenade.gravity = 0.185;
		grenade.gravity_direction=270;
	}

	}





}

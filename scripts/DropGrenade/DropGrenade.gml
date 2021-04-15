function DropGrenade(argument0,argument1) {
	if(collision_rectangle(x-600 * argument0,y+2000,x-500*argument0,y+640,MasterMainhero,0,0))
	{
	Range_timer--;

	if(Range_timer<=0)
	{
		Range_timer=Range_time;
	
		var grenade = instance_create_layer(x,y,"Gun",Grenade);
		grenade.direction=130-argument1;
		grenade.speed = 9;
		grenade.gravity = 0.485;
		grenade.gravity_direction=270;
	}

	}
	if(collision_rectangle(x-900*argument0,y+2000,x-801*argument0,y+640,MasterMainhero,0,0))
	{
	Range_timer--;

	if(Range_timer<=0)
	{
		Range_timer=Range_time;
	
		var grenade = instance_create_layer(x,y,"Gun",Grenade);
		grenade.direction=130-argument1;
		grenade.speed = 12;
		grenade.gravity = 0.485;
		grenade.gravity_direction=270;
	}

	}

	if(collision_rectangle(x-800*argument0,y+2000,x-701*argument0,y+640,MasterMainhero,0,0))
	{
	Range_timer--;

	if(Range_timer<=0)
	{
		Range_timer=Range_time;
	
		var grenade = instance_create_layer(x,y,"Gun",Grenade);
		grenade.direction=130-argument1;
		grenade.speed = 11;
		grenade.gravity = 0.485;
		grenade.gravity_direction=270;
	}

	}

	if(collision_rectangle(x-700*argument0,y+2000,x-601*argument0,y+640,MasterMainhero,0,0))
	{
	Range_timer--;

	if(Range_timer<=0)
	{
		Range_timer=Range_time;
	
		var grenade = instance_create_layer(x,y,"Gun",Grenade);
		grenade.direction=130-argument1;
		grenade.speed = 10;
		grenade.gravity = 0.485;
		grenade.gravity_direction=270;
	}

	}

	if(collision_rectangle(x-499*argument0,y+2000,x-399*argument0,y+640,MasterMainhero,0,0))
	{
	Range_timer--;

	if(Range_timer<=0)
	{
		Range_timer=Range_time;
	
		var grenade = instance_create_layer(x,y,"Gun",Grenade);
		grenade.direction=130-argument1;
		grenade.speed = 7.4;
		grenade.gravity = 0.485;
		grenade.gravity_direction=270;
	}

	}
	
	if(collision_rectangle(x-399*argument0,y+2000,x-299*argument0,y+640,MasterMainhero,0,0))
	{
	Range_timer--;

	if(Range_timer<=0)
	{
		Range_timer=Range_time;
	
		var grenade = instance_create_layer(x,y,"Gun",Grenade);
		grenade.direction=130-argument1;
		grenade.speed = 5;
		grenade.gravity = 0.485;
		grenade.gravity_direction=270;
	}
  }
}

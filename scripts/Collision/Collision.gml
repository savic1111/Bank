function Collision(argument0) {


		if(onStair==false){
		if(place_meeting(x+hspeed_,y,argument0))
		{	
			
		while(!place_meeting(x+sign(hspeed_),y,argument0))
		{
			x=x+sign(hspeed_);
		}	
			
		hspeed_=0;
		}
		}
		
			
	
	
	

	if (place_meeting(x,y+vspeed_,argument0))
	{
	
		
		grav = 0.3;
		if(onStair==false)
		{
			while(!place_meeting(x,y+sign(vspeed_),argument0))
		{
			y=y+sign(vspeed_);
		}
		}
		vspeed_=0;
	}


}

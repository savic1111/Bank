// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Slope(argument0){

if(onStair==true)
{
	
	show_debug_message(onStair);
	
	if(!place_meeting(x+hspeed_,y+vspeed_,argument0))
	{
		onStair = true;
	}

	if (place_meeting(x+hspeed_,y,argument0))
	{
		yplus = 0;
		
		while( place_meeting(x+hspeed_,y-yplus,argument0) && yplus<= abs(4.66*hspeed_)) 
		{
			
			yplus+=1;
			grav =16;
			
		}
		if(place_meeting(x+hspeed_,y-yplus,argument0))
		{
		
		 
			
			
		while(!place_meeting(x+sign(hspeed_),y,argument0))
		{
			
			x=x+sign(hspeed_);
		}	
		hspeed_=0;
		}
		else
		{
			y-=yplus-1;
		}
			
	}

	if (place_meeting(x,y+vspeed_,argument0))
	{
		if(keyboard_check_pressed(ord("H")))
	{
		grav = 0.3;
		onStair = false;
	}while(!place_meeting(x,y+sign(vspeed_),argument0))
		{
			y=y+sign(vspeed_);
		}
		
		vspeed_=0;
	}

}
}
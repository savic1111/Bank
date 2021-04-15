function Jumping(argument0) {
	
	
	if(place_meeting(x,y+1,oGround)){
	airjump= 2;	
		if (keyboard_check_pressed(vk_space))
	{
		vspeed_ = -argument0;
	}
	}else
	{
		vspeed_+=grav;
	}
	
	


	}

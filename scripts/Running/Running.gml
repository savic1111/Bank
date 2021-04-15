function Running(argument0,argument1) {
	if(keyboard_check(vk_lshift) and place_meeting(x,y+1,oGround))
	{
		max_hspeed_ = argument0
		acceleration = argument1;
	}else
	{
		max_hspeed_ = 18;
		acceleration = 2;
	}
}

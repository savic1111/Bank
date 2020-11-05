function Running(argument0, argument1, argument2) {
	if(keyboard_check(vk_lshift) and place_meeting(x,y+argument0,Wall))
	{
		acceleration=argument1;
	}else
	{
		acceleration =argument2;
	}


}

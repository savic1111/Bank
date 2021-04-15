// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Bounce(){
	
	if place_meeting(x+lengthdir_x(speed+1,direction),y,Platform)
	{
		direction = -direction+180;
	}
	
	if place_meeting(x,y+lengthdir_x(speed+1,direction),Platform)
	{
		direction = -direction;
	}

}


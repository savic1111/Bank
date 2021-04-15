// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function VerticalCollision(argument0){
	if place_meeting(x,y+vspeed_,argument0)
       {
	      while !place_meeting(x,y+sign(vspeed_),argument0)
	            {
		          y+=sign(vspeed_);
	            }
	      vspeed_ = 0;
       }
}
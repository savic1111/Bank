// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function HorizontalCollision(argument0){
	if place_meeting(x+hspeed_,y,argument0)
       {
	     while !place_meeting(x+sign(hspeed_),y,argument0)
	           {
		          x+=sign(hspeed_);
	           }
	     hspeed_ = 0;
       }
   }
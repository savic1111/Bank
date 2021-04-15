// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function HorizontalCollisionEnemy(argument0){
if (place_meeting(x+hspeed_enemy,y,argument0))
   {
	   while(!place_meeting(x+sign(hspeed_enemy),y,argument0))
	        {
		      x=x+sign(hspeed_enemy);
	        }	
	   hspeed_enemy=0;
   }
}
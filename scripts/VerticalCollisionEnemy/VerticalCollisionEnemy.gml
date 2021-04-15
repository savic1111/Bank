// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function VerticalCollisionEnemy(argument0){
if (place_meeting(x,y+vspeed_enemy,argument0))
   {
	  while(!place_meeting(x,y+sign(vspeed_enemy),argument0))
	       {
		      y=y+sign(vspeed_enemy);
	       }	
	  vspeed_enemy=0;
   }
}
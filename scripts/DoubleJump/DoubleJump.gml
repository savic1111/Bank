// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DoubleJump(){
	if(airjump>0)
	  {
	    if keyboard_check_pressed(vk_up) ||  gamepad_button_check_pressed(4,gp_face1)
	       {
	 	     vspeed_ = argument0;
		     airjump-=1;
	       }
	  }
}
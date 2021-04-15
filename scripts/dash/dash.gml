// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function dash(){
	
	
	if(abs(hspeed_)<=18)
	{
		is_dashing = false;
	}
	
	if(keyboard_check_pressed(ord("Q")) and is_dashing ==false)
	{
		
		
		is_dashing = true;
		dash_counter = 0;
		
		horizontal_dir = sign(hspeed_);
		
		hspeed_+=dash_speed*horizontal_dir;
		
	}
	
	if(is_dashing ==true)
	{
		dash_counter+=1;
		
		if(dash_counter mod 120){
			var obj = instance_create_depth(x,y,depth+1,dash_effect);
			obj.image_angle = rotation;
		}
	}
	
}
/// @description Insert description here
// You can write your code in this editor


var view_w_half = camera_get_view_width(cam)*0.25;
var view_h_half = camera_get_view_height(cam)*0.5;

/*if(room==Room11)
{
if(x<=TestMainhero.x-357)
{
	
	move_camera=false;
}
}*/


switch(move_camera)
{
	
	
	case true:
	count+=1;
	
	if(count>200)
	{
	x-=2;
	}
	
	
	break;
	
	case false:
	







	if(TestMainhero.x-x >=camera_get_view_width(cam)-356*zoom)
	{
		x+=TestMainhero.hspeed_;
		camera_set_view_pos(cam,x,y-view_h_half)
		
	}
	
	if(TestMainhero.x-x <camera_get_view_width(cam)-1620*zoom)
	{
		x-= -(TestMainhero.hspeed_);
		camera_set_view_pos(cam,x,y-view_h_half)
		
	}
	
	
	
	//camera_set_view_pos(cam,x,y-view_h_half);
    
	break;
	
}


if(keyboard_check(ord("J")))
{
target_zoom+=1/8;
camera_set_view_size(cam,orig_x_size*zoom,orig_y_size*zoom);
 zoom = clamp(target_zoom,1,2);
}

if(keyboard_check(ord("K")))
{
target_zoom-=1/8;
camera_set_view_size(cam,orig_x_size*zoom,orig_y_size*zoom);
 zoom = clamp(target_zoom,1,2);
}
	
	x+=random_range(-shake_remain,shake_remain);
    y+=random_range(-shake_remain,shake_remain);
    shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));

   

    var mouse_input = mouse_wheel_down()-mouse_wheel_up();
    




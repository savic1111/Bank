/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_text(x,y,hspeed_);
draw_line(x-1000,y+52,x+1000,y+32);

//draw_text(x,y,RandomCondition.chosen_condition);
if(keyboard_check(ord("Y")))
	{
		 draw_set_color(c_black);
	     draw_set_alpha(1);	
//draw_rectangle(0,0,room_width,room_height,0);
		//draw_rectangle_color(0,0,camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]),c_black,c_black,c_black,c_black,false)
		draw_rectangle(camera_get_view_x(view_camera[0])+3920,camera_get_view_y(view_camera[0])+1960,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),false);
	}
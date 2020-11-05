/// @description Insert description here
// You can write your code in this editor

draw_text(room_width/2-40,room_height/2,vspeed_);
draw_self();

if(collision_line(x+30*image_xscale,y-42,x+200*image_xscale,y+100,Wall,true,false) or collision_line(x+30*image_xscale,y-52,x+200*image_xscale,y-100,Wall,true,false) or collision_line(x+200*image_xscale,y+100,x+200*image_xscale,y-100,Wall,true,false))
{
	draw_set_color(c_red);
}else
{
	draw_set_color(c_white);
}
//draw_line(x+30*image_xscale,y-42,x+200*image_xscale,y+100);
//draw_line(x+30*image_xscale,y-52,x+200*image_xscale,y-100);
//draw_line(x+200*image_xscale,y+100,x+200*image_xscale,y-100);



if(slot1==true)
{
	draw_circle_color(camera_get_view_x(view_camera[0])+66,3,12,c_white,c_white,false);
			draw_text(camera_get_view_x(view_camera[0])+62,0,ShotGunAmmo);
			draw_set_font(fnt_text);
			draw_set_color(c_black);
}

if(slot2==true)
{
	draw_circle_color(camera_get_view_x(view_camera[0])+4,3,12,c_white,c_white,false);
			draw_text(camera_get_view_x(view_camera[0]),0,RifleAmmo);
			draw_set_font(fnt_text);
			draw_set_color(c_black);
}


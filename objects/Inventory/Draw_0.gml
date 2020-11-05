/// @description Insert description here
// You can write your code in this editor
if(showInv)
{
	var x1,x2,y1,y2;
	x1 = camera_get_view_x(view_camera[0]);
	x2 = x1 + camera_get_view_width(view_camera[0]);
	y1 = camera_get_view_y(view_camera[0]);
	y2 = y1+104;
	
	draw_set_color(c_white);
	draw_set_alpha(0);
	draw_rectangle(x1,y1,x2,y2,0);
	draw_set_alpha(1);
	draw_text(room_width/2,room_height/2,"x");

	
	
	draw_set_color(c_black);
	
	for(i=0;i<=4;i+=1)
	{
		draw_sprite(SprBorderInterface,0,x1+44+(i*80),y2-44);
		button[i].x = x1+44+(i*80);
		button[i].y = y2-44;
	}
}
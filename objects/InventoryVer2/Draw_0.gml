/// @description Insert description here
// You can write your code in this editor
for(var yy = 0;yy<height;yy++)
{
	for(var xx = 0;xx<width;xx++)
	{
		var tx = (camera_get_view_x(view_camera[0])+35)+(xx*box_size);
		var ty = 36+(yy*box_size);
		
		
		draw_sprite(SprItems,box[# xx, yy],tx,ty);
		
	}
}
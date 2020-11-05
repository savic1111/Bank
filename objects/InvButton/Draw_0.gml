/// @description Insert description here
// You can write your code in this editor

var item = global.inventory[slot];
var click = mouse_check_button_pressed(mb_left);


if(abs(mouse_x - x)<16) and (abs(mouse_y-y)<16)
{
	draw_set_colour(c_orange);
	draw_rectangle(x-24,y-24,x+24,y+24,0);
	if(click)
	{
		if(item!=-1)
		{
			ItemDropSlot(slot);
		}
		if(mouseItem != -1)
		{
			ItemPickUpSlot(mouseItem,slot);
		}
		mouseItem = item;
	}
}


if(item!=-1)
{
	draw_sprite(change,0,x,y);
}


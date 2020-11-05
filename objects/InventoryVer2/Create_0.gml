/// @description Initiliaze the inventory object


enum item {
	   none = 0,
	   sword = 1,
	   poison = 2
   }
   
weaponSlot = 0;
   
width = 8;
height = 1;
box_size = 64;
draw_set_font(fnt_text);

box = ds_grid_create(width,height);
ds_grid_clear(box,item.none);

count = ds_grid_create(width,height);
ds_grid_clear(count,0);


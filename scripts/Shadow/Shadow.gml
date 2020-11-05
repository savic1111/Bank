function Shadow() {

	if(instance_exists(Sun))
	{

	var sx = (room_width/2)-mouse_x;
	var sy = (room_height/2)-mouse_y+100;

	gpu_set_fog(true,c_black,0,1);


	if((TestMainhero.x-Sun.x)<170 and(TestMainhero.x-Sun.x)>-170 )
	{
	draw_sprite_pos(sprite_index,image_index,
	x-(sprite_width/2)+lerp(TestMainhero.x,TestMainhero.x-Sun.x,1),
	y+100,
	x+(sprite_width/2)+lerp(TestMainhero.x,TestMainhero.x-Sun.x,1),
	y+100,
	x+(sprite_width/2),
	y+sprite_height/2,
	x-(sprite_width/2),
	y+sprite_height/2,
	0.5);
	}
	else if((TestMainhero.x-Sun.x)>=170)
	{
	draw_sprite_pos(sprite_index,image_index,
	x-(sprite_width/2)+170,
	y+100,
	x+(sprite_width/2)+170,
	y+100,
	x+(sprite_width/2),
	y+sprite_height/2,
	x-(sprite_width/2),
	y+sprite_height/2,
	0.5);
	}else if((TestMainhero.x-Sun.x)<=-170)
	{
		draw_sprite_pos(sprite_index,image_index,
	x-(sprite_width/2)-170,
	y+100,
	x+(sprite_width/2)-170,
	y+100,
	x+(sprite_width/2),
	y+sprite_height/2,
	x-(sprite_width/2),
	y+sprite_height/2,
	0.5);
	}

 
	gpu_set_fog(false,c_white,0,0);

	}


}

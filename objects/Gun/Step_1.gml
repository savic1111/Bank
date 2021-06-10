/// @description Insert description here
// You can write your code in this editor
    if(global.pause) exit;

	x = MasterMainhero.x;
    y = MasterMainhero.y+2;

    image_angle = point_direction(x ,y,mouse_x,mouse_y);
    sh = image_angle;
    Shoot();
	
	if(image_angle >90)and(image_angle<270)
	{
		image_yscale=-1;
	}
	else
	{
		image_yscale = 1;
	}
	
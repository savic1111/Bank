function GRANATA() {
	if(shoot)
	{
		gravity = gra;
	}
	if(keyboard_check(vk_up))
	{
		Angle++;
	}
	if(keyboard_check(vk_down))
	{
		Angle--;
	}

	if(!shoot)
	{
		if(keyboard_check_pressed(vk_space))
		{
			instance_create_layer(x,y,"Instances",oBall);
			oBall.direction = Angle;
			oBall.speed = Speed;
			shoot = true;
		}
	}

	for(var i =0;i<32;i++)
	{
		var X = i*32;
		if(Angle>270)
	{

	}
	else
	if(Angle>90)
	{
		X=-X;
	}
	else
	if(Angle>180)
	{
		X=-X;
	}
		var Y = BallMotion(X,Speed,Angle,0,0,grav);
		draw_set_color(c_red);
		draw_point(xstart+X,ystart-Y);
	}


}

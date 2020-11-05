function ThroughTheCover() {
	if(place_meeting(x+hspeed_,y,Cover))
	{
		x= Cover.x-(120*image_xscale);
		y=Cover.y-100;
	
	}

	if(place_meeting(x,y+32,Cover))
	{
		hspeed_=0;
		x+=image_xscale*16;
	}


}

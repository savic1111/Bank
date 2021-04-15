function ThroughTheCover() {
	if(place_meeting(x+hspeed_,y,Cover)) and keyboard_check_pressed(ord("F"))
	{
		
		//layer_sequence_create("Instances",TestMainhero.x,TestMainhero.y,CoverThrough);
		x= Cover.x-(100*image_xscale);
		y=Cover.y-300;
	
	}

	if(place_meeting(x,y+32,Cover))
	{
		hspeed_=0;
		x+=image_xscale*16;
	}


}

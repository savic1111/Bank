function SitDown() {

	switch(SitDownAndGetUp)
	{
		case 0:
		state = state_hero.sit;
		break;
	
		case 1:
		image_speed = -1;
		break;
	}



	if(keyboard_check_pressed(ord("C")))
	{
		SitDownAndGetUp = -(SitDownAndGetUp)+1;
	}



}

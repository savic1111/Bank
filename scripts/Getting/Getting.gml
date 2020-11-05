function Getting() {
	    if(keyboard_check_pressed(ord("C")))
		{
	
		sprite_index = SprMainHeroTransition;
	
		image_speed=-1;
		if(image_index<1)
		{
		image_speed = 0;
		state = state_hero.sit;
		}
		}


}

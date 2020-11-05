function Up() {
	 if(keyboard_check_pressed(ord("C")))
	{
		SpeedTrans = -1;
		ImageTrans = 0;
		StateTrans = state_hero.idle;
	
		state= state_hero.trans;
	}







}

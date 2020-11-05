function Sit() {
	if(keyboard_check_pressed(ord("C")))
	{
		SpeedTrans = 1;
		ImageTrans = 2;
		StateTrans = state_hero.sit;
		state= state_hero.trans;
	
	}


}

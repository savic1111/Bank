function ScreenShake(argument0, argument1) {


	with(oCameraForBigRoom)
	{
		if(argument0>shake_remain)
		{
			shake_magnitude = argument0;
			shake_remain = argument0;
			shake_length = argument1;
		}
	}


}

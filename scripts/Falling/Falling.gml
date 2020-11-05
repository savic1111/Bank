function Falling() {
	spee = 5;
	y+=spee;

	if(place_meeting(x,y,Wall))
	{
		spee*=-1;
	}else
	{
		spee+=0.1;
	}
	


}

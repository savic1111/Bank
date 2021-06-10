/// @description Insert description here
// You can write your code in this editor
switch(state)
{
	case state_door.open:
	image_yscale = 0;
	
	if(distance_to_object(MasterMainhero)>1000)
	{
		state = state_door.close;
	}
	break;
	case state_door.close:
	
	if(distance_to_object(MasterMainhero)<1000)
	{
		state = state_door.open;
	}
    image_yscale = 1;
	break;
}
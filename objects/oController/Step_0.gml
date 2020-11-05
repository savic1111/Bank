/// @description Insert description here
// You can write your code in this editor
switch(room_numer)
{
	case Camera_room:
	if(!instance_exists(oCamera))
	{
		instance_create_layer(x,y,"Instances",oCamera);
	}
	
	if(oCamera.move_camera=false)
	{
		
	
		
	}
	break;
}
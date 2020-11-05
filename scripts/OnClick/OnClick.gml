function OnClick() {

	switch(text)
	{
		case "Play":
		instance_create_layer(room_width/2,room_height/2,"Instances",Enemy);
		break;
	}
	instance_destroy();


}

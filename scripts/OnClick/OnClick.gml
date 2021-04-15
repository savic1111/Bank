function OnClick() {

	switch(text)
	{
		case "Random":
		instance_create_layer(room_width/2,room_height/2,"Instances",RandomCondition);
		text = "Play";
		
		break;
		
		case "Play":
		room_goto(Tutorial);
		
		break;
	}



}

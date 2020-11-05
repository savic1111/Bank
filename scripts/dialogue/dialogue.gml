function dialogue() {
	if(place_meeting(x,y,TestMainhero)){
	
	
		draw_set_color(c_white);
		if(keyboard_check_pressed(ord("E")))
		{
			ParentHero.movement = false;
		if(myTextBox==noone)
		{
		myTextBox = instance_create_layer(x-100,y-200,"Instances",TextBox);
		myTextBox.text = myText;
		myTextBox.creator = self;
		myTextBox.name = myName;
		}
	}
	}
	else
	{
		if(myTextBox!=noone)
		{
		instance_destroy(myTextBox);
		myTextBox = noone;
		}
	}


}

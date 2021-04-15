function dialogue() {

	
	
		draw_set_color(c_white);
		if(keyboard_check_pressed(ord("E")))
		{
		
		if(myTextBox==noone)
		{
		myTextBox = instance_create_layer(x,y,"Instances",TextBox);
		myTextBox.text = myText;
		myTextBox.creator = self;
		//myTextBox.name_ = myName;
		}
	}
	

	
	


}

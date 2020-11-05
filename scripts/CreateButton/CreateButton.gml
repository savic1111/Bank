function CreateButton() {
	var x_=argument[0];
	var y_=argument[1];
	var width_=argument[2];
	var height_=argument[3];
	var text_=argument[4];
	var script_=argument[5];

	var button_=instance_create_layer(x_,y_,"Instances",Button);

	with(button_){
		width=width_;
		height = height_;
		text=text_;
		script=script_;
	}

	return button_;


}

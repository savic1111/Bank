function GetHover() {
	var mouseX_ = device_mouse_x_to_gui(0);
	var mouseY_ = device_mouse_y_to_gui(0);

	return point_in_rectangle(mouseX_,mouseY_,x,y,x+width,y+height);


}

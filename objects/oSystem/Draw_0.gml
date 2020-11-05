/// @description Insert description here
// You can write your code in this editor
if(gamePaused){

	var i =0;
repeat(buttons){
	
	draw_set_font(fnt_menu);
	draw_set_halign(fa_center);
	draw_set_color(c_ltgray);
	var view_w_half = camera_get_view_width(view_camera[0])*0.5;
	if(menu_index == i) draw_set_color(c_red);
	draw_text(x,y+button_h*i,button[i]);
	i++;

}
	
	for(var i = 0;i<array_height_2d(allObjects);++i)
	{
		draw_sprite_ext(allObjects[i,0],allObjects[i,1],allObjects[i,2],allObjects[i,3],
		allObjects[i,4],allObjects[i,5],allObjects[i,6],allObjects[i,7],allObjects[i,8]);
	}
	
	
}
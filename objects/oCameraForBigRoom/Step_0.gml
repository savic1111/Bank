/// @description Insert description here
// You can write your code in this editor
var view_w_half = camera_get_view_width(cam)*0.25;
var view_h_half = camera_get_view_height(cam)*0.5;




//if(keyboard_check(ord("J")))
//{
target_zoom+=1/8;
camera_set_view_size(cam,orig_x_size*zoom,orig_y_size*zoom);
 zoom = clamp(target_zoom,1,2);
 
 x+=random_range(-shake_remain,shake_remain);
    y+=random_range(-shake_remain,shake_remain);
    shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));
//}



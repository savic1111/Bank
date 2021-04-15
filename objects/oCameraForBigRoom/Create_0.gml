/// @description Insert description here
// You can write your code in this editor


count = 0;

cam = view_camera[0];

y = camera_get_view_height(cam)*0.5;
x = camera_get_view_width(cam)*0.5;


follow = MasterMainhero;
orig_x_size = 1920;
orig_y_size = 980;
zoom = 3;
target_zoom = zoom;

xTo = xstart;
yTo = ystart;

shake_length = 6000;
shake_magnitude = 600;
shake_remain = 6000;
buff = 32;
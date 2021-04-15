/// @description Insert description here
// You can write your code in this editor
move_camera = false;

count = 0;

cam = view_camera[0];

y = camera_get_view_height(cam)*0.5;
x = camera_get_view_width(cam)*0.5;


follow = MainHero;
orig_x_size = 1920;
orig_y_size = 1080;
zoom = 1;
target_zoom = zoom;

xTo = xstart;
yTo = ystart;

shake_length = 60;
shake_magnitude = 6;
shake_remain = 6;
buff = 32;
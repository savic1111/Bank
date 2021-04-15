/// @description Insert description here
// You can write your code in this editor


enum state_hero_{
	idle,
	sit,
	trans
}

movement = true;


state = state_hero.idle;
hspeed_ = 0;
max_hspeed_ = 18;
vspeed_ = 0;
gravity_ = .8;

acceleration = 2;


jump_height = -16;
jump_height_max = -45;

friction_=1;


is_dashing = false;
dash_speed = 400;
dash_counter = 0;

rotation = image_angle;


move_lock = false;
grounded = false;

airjump = 2;


ammo = 100;
ammo_max=100;

special_ammo  =10;


hp = 100;
hp_max = 100;

dropBoomerang = false;


keyboard_set_map(ord("D"),vk_right);
keyboard_set_map(ord("A"),vk_left);
keyboard_set_map(ord("W"),vk_up);
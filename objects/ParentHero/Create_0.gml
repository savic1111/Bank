/// @description Insert description here
// You can write your code in this editor
enum state_hero{
	idle,
	sit,
	trans
}

Anim = SprMainhero;

onStair = false;
Speed = 20;
Angle = 45;
gra = 0.75;

is_dashing = false;
dash_speed = 40;
dash_counter = 0;

rotation = image_angle;



global.TutorialPause = 0;
movement = true;
keyReload = keyboard_check_pressed(ord("R"));
shoot = true;
GunSlot = 0;


moveLeft = false;
moveRight = false;

canDust = true;
SitDownAndGetUp = 0;
state = state_hero.idle;
hspeed_ = 0;
vspeed_=0;
walkspeed_=0.15;
jumpspeed_ = 9;
acceleration = 15;
hp_hero = 60;
hp_hero_max = hp_hero;

slot1 = false;
slot2 = false;

inventorySlot[0] = 0;
inventorySlot[1] = 0;
inventorySlot[2] = 0;
inventorySlot[3] = 0;
inventorySlot[4] = 0;
inventorySlot[5] = 0;
inventorySlot[6] = 0;

globalvar RifleAmmo;
RifleAmmo = 10;
globalvar ShotGunAmmo;
ShotGunAmmo = 10;



healthbar_width = 300;
healthbar_height = 44;
healthbar_x = x-10;
healthbar_y = y-500;

drawX[0] = x;
drawY[0] = y;


window_set_cursor(cr_arrow);
keyboard_set_map(ord("D"),vk_right);
keyboard_set_map(ord("A"),vk_left);
keyboard_set_map(ord("W"),vk_space);



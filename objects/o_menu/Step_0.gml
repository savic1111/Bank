/// @description Insert description here
// You can write your code in this editor
menu_move = keyboard_check_pressed(vk_down)-keyboard_check_pressed(vk_up);

menu_index+=menu_move;
if(menu_index<0) menu_index = buttons-1;
if(menu_index>buttons-1) menu_index = 0;

last_selected = menu_index;


if(keyboard_check_pressed(vk_enter))
{
switch(menu_index)
{
	case 0:
	global.diff = 3;
	global.hp = 140;
	global.ammo = 100;
	global.SniperDamage = 15;
	global.damageEnemy = 2;
	global.dm= 3;
	room_goto(Tutorial);

	break;
	
	case 1:
	global.diff = 8;
	global.hp = 80;
	global.ammo = 80;
	global.SniperDamage = 30;
	global.damageEnemy = 5;
	global.dm=2;
	room_goto(Tutorial);
	break;
	
	case 2:
		global.diff = 12;
	global.hp = 60;
	global.ammo = 60;
	global.SniperDamage = 40;
	global.damageEnemy = 7;
	global.dm=1;
	room_goto(Tutorial);
	
	case 3:
	game_end();
	break;
}
}
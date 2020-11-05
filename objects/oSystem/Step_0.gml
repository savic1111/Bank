/// @description Insert description here
// You can write your code in this editor

if(instance_exists(TestMainhero))
{
x=  TestMainhero.x;
}
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
	show_debug_message("Game started!!");
	break;
	
	case 1:
	show_debug_message("Game loaded!");
	break;
	
	case 2:
	show_debug_message("Settings");
	break;
	
	case 3:
	game_end();
	break;
}
}
/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(interact_key))
{
	if(page < array_length_1d(text) - 1){
		page++;
	}else { instance_destroy();}
}

if(page % 2==0)
{
	namePage =1;
}else
{
	namePage = 0;
}
/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(ord("E")))
{
	if(charCount<string_length(text[page]))
	{
		charCount = string_length(text[page]);
	}
	
	else if(page+1<array_length_1d(text))
	{
		charCount = 0;
	page+=1;
	}else
	{
		instance_destroy();
		creator.alarm[1] = 1;
	}
}
/// @description Insert description here
// You can write your code in this editor
draw_self();

if(place_meeting(x-10,y,TestMainhero))
{
	global.TutorialPause = 1;
	Message("Press E");

	if(keyboard_check_pressed(ord("E")))
	{
		global.TutorialPause = 0;
		instance_destroy();
	}
}


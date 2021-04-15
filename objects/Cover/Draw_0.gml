/// @description Insert description here
// You can write your code in this edit

draw_self();

if(place_meeting(x-10,y,TestMainhero))
{
	global.TutorialPause = 1;
	Message("Press F");

	if(keyboard_check_pressed(ord("F")))
	{
		global.TutorialPause = 0;
		
		TestMainhero.x= x-(100*image_xscale);
		TestMainhero.y=y-100;
	}
	show_debug_message(global.TutorialPause)
}
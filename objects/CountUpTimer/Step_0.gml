/// @description Insert description here
// You can write your code in this editor
global.seconds -=1/room_speed;

show_debug_message(BREAK);

if(global.seconds<=0 and ROUND ==true)
{
	global.pause =1;
	global.seconds+=15;
	ROUND= false;
	BREAK = true;
}

if(global.seconds<=0 and BREAK ==true)
{
	global.pause =0;
	global.seconds+=40;
	ROUND= true;
	BREAK = false;
}

if(global.seconds<=0)
{
	global.seconds=60;
	global.minutes-=1;
}





/// @description Insert description here
// You can write your code in this editor

randomize();

enum bad_things{
	darkScreen,
	whiteScreen,
	restTime
}

fireball = bad_things.restTime;

choice_x = x;
choice_y = y;

 dark = 3;
 dark_max = 3;
 
 white = 3;
 white_max = 3;

choice_h = 96;

points_evil = 0;
points_evil_max = 100;

timer = 0;

timer_ability = 0;

text = choose("level","run");
randomAction = irandom_range(0,10);

choice_index = 0;
last_selected = 0;
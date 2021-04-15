/// @description Insert description here
// You can write your code in this editor

if(dark==0) and (white==0)
{
	timer = 0;
}

if(timer >= randomAction)
{
	
	fireball = choose(bad_things.darkScreen,bad_things.whiteScreen);
	randomAction = irandom_range(0,10);
	timer = 0;
}

timer += 1/room_speed;

EvilAction[0] = "Dark Screen";
EvilAction[1] = "Killing Snow";

EvilAbility[0]= dark;
EvilAbility[1] = white;


EvilAbilities = array_length_1d(EvilAbility);

EvilAbility_max[0]= dark_max;
EvilAbility_max[1] = white_max;

EvilAbilities_max = array_length_1d(EvilAbility_max);



EvilActions = array_length_1d(EvilAction);

if(oConditions.complete == true)
{
	dark = -1;
	EvilAction[0] = "none";
}

if(oConditions.complete_ghost == true)
{
	 white = -1;
	EvilAction[1] = "none";
}

if(global.pause == 1)
{
	if(dark!=-1)
	{
	if(points_evil>0)
	{
	if(dark<dark_max)
	{
		dark+=points_evil/points_evil;
		points_evil-=10;
	}
	}
	}
}

	
	
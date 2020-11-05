/// @description Insert description here
// You can write your code in this editor



sprite_index = SprMainhero;

if(!movement)
{
	hspeed_ = 0;
	vspeed_ = 0;
}
if(movement){

switch(state)
{
	case state_hero.idle:
	sprite_index = SprMainhero;
	image_speed = 1;
	Walking(walkspeed_,grav);
    Jumping(jumpspeed_);
	
    Running(65,25,15);
    xscale(hspeed_);
	ChangeTheWeapon();
ThroughTheCover();

Collision(Wall);
Collision(Cover);
Slope(oStair);
	Sit();
	break;
	
	case state_hero.trans:
	Sitting(SpeedTrans,ImageTrans,StateTrans);
	break;
	
	case state_hero.sit:
	sprite_index = SprMainHeroSit;
Walking(walkspeed_,grav);
Jumping(jumpspeed_);
Running(65,25,15);
xscale(hspeed_);
	
	Up();
	break;
	
}
}

/*if (hspeed > frictionx){hspeed -= frictionx;}
else if (hspeed > 0){hspeed = 0;}
else if (hspeed < -frictionx){hspeed += frictionx;}
else if (hspeed < 0){hspeed = 0;}
*/













x= x+hspeed_;
y= y+vspeed_;
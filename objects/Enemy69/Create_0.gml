/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

if(hasweapon)
{
	mygun = instance_create_layer(x,y,"Gun",GunEnemy2);
	with(mygun)
	{
		owner = other.id;
	}
	
}
else mygun = noone;


firingdelay = 0;
recoil = 0;
health_enemy = 10 ;
state = state_enemy.idle;
vspeed_enemy = 0;
hspeed_enemy = 0;
flash=0;
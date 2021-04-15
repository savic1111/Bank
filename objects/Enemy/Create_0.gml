/// @description Insert description here
// You can write your code in this editor
enum state_enemy1{
	idle,
	chase
	
}

if(hasweapon)
{
	mygun = instance_create_layer(x,y,"Gun",GunEnemy);
	with(mygun)
	{
		owner = other.id;
	}
	
}
else mygun = noone;


firingdelay = 0;
recoil = 0;
health_enemy = 100;
health_enemy_max = health_enemy;
state = state_enemy1.idle;
vspeed_enemy = 0;
hspeed_enemy = 0;
flash=0;

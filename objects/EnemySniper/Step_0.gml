/// @description Insert description here
// You can write your code in this editor
if(health_enemy<=0)
{
	
	oConditions.enemy+=1;
	instance_destroy();
	with(SniperGun)
	{
		instance_destroy();
	}
}




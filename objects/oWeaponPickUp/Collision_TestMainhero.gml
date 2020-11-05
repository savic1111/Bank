/// @description Insert description here
// You can write your code in this editor
ds_map_add(oWeapon.weapons[1],"Ammo",9);
with(oWeapon)
{
	
	ChangeWeapon(other.weapon);
	
}

instance_destroy();

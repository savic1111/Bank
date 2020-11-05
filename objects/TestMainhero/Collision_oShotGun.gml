/// @description Insert description here
// You can write your code in this editor

if(slot1 = false)
{
for(var x1 = 0;x1<InventoryVer2.width;x1++)
{
	
if(inventorySlot[x1]==0)
{	
	inventorySlot[x1]=1;
	slot1 = true;
	loc =x1;
	break;
}
}	
}


for(var xx = 0;xx<InventoryVer2.width;xx++)
{
	
if(InventoryVer2.box[# xx,0] == 0 )
{
	
	GunSlot = InventoryVer2.weaponSlot;
	InventoryVer2.weaponSlot++;
	AddItem(GunSlot,0,1);
	
	exit;
}
if(InventoryVer2.box[# xx,0] == 1 )
{
ShotGunAmmo+=15;
	exit;
}
	
}


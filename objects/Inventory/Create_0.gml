/// @description Insert description here
// You can write your code in this editor

globalvar showInv;
showInv = true;
globalvar maxItems;
maxItems = 20;




/*for(i = 0;i<maxItems;i+=1)
{
	global.inventory[i] = -1;
	button[i] = instance_create_layer(0,0,"Instances",InvButton);
	button[i].slot = i;	
}
*/

global.inventory[0] = -1;
global.inventory[1] = -1;
global.inventory[2] = -1;
global.inventory[3] = -1;
global.inventory[4] = -1;
	button[0] = instance_create_layer(0,0,"Instances",InvButton);
	button[1] = instance_create_layer(0,0,"Instances",InvButton);
	button[2] = instance_create_layer(0,0,"Instances",InvButton);
	button[3] = instance_create_layer(0,0,"Instances",InvButton);
	button[4] = instance_create_layer(0,0,"Instances",InvButton);
	button[0].slot = 0;
	button[1].slot = 1;
	button[2].slot = 2;
	button[3].slot = 3;
	button[4].slot = 4;

globalvar mouseItem;
mouseItem = -1;
instance_create_layer(0,0,"Instances",MouseItem);






 
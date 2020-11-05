function ItemPickUpSlot(argument0, argument1) {
	if(global.inventory[argument0] ==-1)
	{
		global.inventory[argument1]=argument0;
		return(1);
	}
	return(0);


}

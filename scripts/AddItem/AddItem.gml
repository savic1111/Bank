function AddItem() {
	var xx = argument[0];
	var yy = argument[1];
	var add_item = argument[2];

	if(xx!=median(0,xx,InventoryVer2.width-1) or yy != median(0,yy,InventoryVer2.height-1))
	{
		show_debug_message("Out of range");
		exit;
	}

	var item_count = InventoryVer2.count[# xx, yy];

	if(item_count==0)
	{
		InventoryVer2.box[# xx,yy] = add_item;
	
		InventoryVer2.count[# xx,yy] ++;
	
		return true;
	
	}else if(item_count>0)
	{
	
		if(InventoryVer2.box[# xx,yy] == add_item) {
			InventoryVer2.count[# xx,yy]++;
			return true;
		}else
		{
			show_debug_message("there is already and item there")
			return false;
		}
	
	}else
	{
		show_error("count less than 0",false);
	}


}

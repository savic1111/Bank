function RemoveItem() {
	var xx = argument[0];
	var yy = argument[1];


	if(xx!=median(0,xx,InventoryVer2.width-1) || yy != median(0,yy,InventoryVer2.height-1))
	{
		show_debug_message("Out of range");
		exit;
	}

	var item_count = InventoryVer2.count[# xx, yy];

	 if(item_count>0)
	{
		InventoryVer2.count[# xx,yy]--;
	
		var remove_item = InventoryVer2.box[# xx, yy];
	 
		if(item_count == 1) {
			InventoryVer2.count[# xx,yy] = item.none;
		
		}
	
		return remove_item;
	}else if (item_count == 0)
	{
		show_debug_message("there was not an item at that location");
		return item.none;
	 
	}else
	{
		show_error("count less than 0",false);
	}


}

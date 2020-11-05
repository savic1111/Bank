function PickUpItem() {
	var add_item = argument[0];

	   for(var yy = 0;yy<InventoryVer2.height;yy++) {
		   for(var xx = 0;xx<InventoryVer2.width;xx++)
		   {
			   if(InventoryVer2.box[# xx,yy]==add_item){
				   InventoryVer2.count[# xx, yy]++;
				   return true;
			   }
		   }
	   }
   
	   for(var yy = 0;yy<InventoryVer2.height;yy++) {
		   for(var xx = 0;xx<InventoryVer2.width;xx++)
		   {
			   if(InventoryVer2.box[# xx,yy]==item.none){
				   InventoryVer2.box[# xx,yy]=add_item;
				   InventoryVer2.count[# xx, yy]++;
				   return true;
			   }
		   }
	   }
   
   
	   show_debug_message("The inventory is full");
	   return false;


}

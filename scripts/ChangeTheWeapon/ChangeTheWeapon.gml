function ChangeTheWeapon() {

	with(oWeapon)
	{
	
		show_debug_message(TestMainhero.GunSlot);
	
	if(keyboard_check_pressed(ord("L")))
	{
		if(InventoryVer2.weaponSlot>0)
		{
		
			InventoryVer2.weaponSlot-=1;
			ChangeWeapon(InventoryVer2.weaponSlot);
			}
	}

	if(keyboard_check_pressed(ord("E")))
	{
		if(InventoryVer2.weaponSlot<TestMainhero.GunSlot+1)
		{
		
			InventoryVer2.weaponSlot+=1;
			ChangeWeapon(InventoryVer2.weaponSlot);
		}
	}
	}



}

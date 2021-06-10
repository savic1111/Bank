// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function FIndDoor(){
	var _list = ds_list_create();
	var _list1 = ds_list_create();
	var _num = collision_line_list(x-1000,y+52,x+1000,y+32,DoorBlocker,false,true,_list,false);
		var _num_ext = !collision_line_list(x-1000,y+52,x+1000,y+32,DoorBlocker,false,true,_list1,false);

	
	draw_text(x,y-1000,_num);
	
	if(_num>0)
	{
		for(var i = 0;i<_num;i++)
		{
			_list[|i].state = state_door.open;
		}
	}
		ds_list_destroy(_list);
	

}
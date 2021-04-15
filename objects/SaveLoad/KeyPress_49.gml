/// @description Insert description here
// You can write your code in this editor
var root_list = ds_list_create();

with(MasterMainhero)
{
	var _map = ds_map_create();
	ds_list_add(root_list,_map);
	ds_list_mark_as_map(root_list,ds_list_size(root_list)-1);
	
	var _obj = object_get_name(object_index);
	ds_map_add(_map,"obj",_obj);
	ds_map_add(_map,"x",x);
	ds_map_add(_map,"y",y);
	ds_map_add(_map,"image_index",image_index);
	ds_map_add(_map,"image_blend",image_blend);
}

with(AudioGhost)
{
	var _map = ds_map_create();
	ds_list_add(root_list,_map);
	ds_list_mark_as_map(root_list,ds_list_size(root_list)-1);
	
	var _obj = object_get_name(object_index);
	ds_map_add(_map,"obj",_obj);
	ds_map_add(_map,"x",x);
	ds_map_add(_map,"y",y);
	ds_map_add(_map,"image_index",image_index);
	ds_map_add(_map,"image_blend",image_blend);
}

var wrapper = ds_map_create();
ds_map_add_list(wrapper,"ROOT",root_list);

var _string = json_encode(wrapper);
SaveToFile("savedgame.sav",_string);

ds_map_destroy(wrapper);

show_debug_message("Game saved");
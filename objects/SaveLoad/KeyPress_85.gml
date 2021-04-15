/// @description Insert description here
// You can write your code in this editor
with(MasterMainhero) instance_destroy();
with(AudioGhost) instance_destroy();


if(file_exists("savedgame.sav"))
{
	var wrapper = LoadFile("savedgame.sav");
	var _list = wrapper[? "ROOT"];

	
	for(var i = 0;i<ds_list_size(_list);i++)
	{
		var _map = _list[| i];
		
		var _obj = _map[? "obj"];
		with(instance_create_layer(0,0,layer,asset_get_index(_obj)))
		{
			x = _map[? "x"];
			y = _map[? "y"];
			image_blend = _map[? "image_blend"];
			image_index = _map[? "image_index"];
		}
	}
	
	ds_map_destroy(wrapper);
	show_debug_message("Game loaded");
	
}
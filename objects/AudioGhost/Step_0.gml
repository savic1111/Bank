/// @description Insert description here
// You can write your code in this editor

if(distance_to_object(MasterMainhero)<3000)
{
if(mp_grid_path(global.grid,path,x,y,MasterMainhero.x,MasterMainhero.y,1))
{
	path_start(path,8,path_action_stop,false);
}
}


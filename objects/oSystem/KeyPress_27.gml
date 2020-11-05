/// @description Insert description here
// You can write your code in this editor



if(gamePaused == false)
{
	exit;
	var offset = 0;
	for(var i =0;i<instance_count;++i)
	{
		if(instance_find(all,i).sprite_index !=-1)
		{
		allObjects[i-offset  ,0] = instance_find(all,i).sprite_index;
		allObjects[i-offset,1] = instance_find(all,i).image_index;
		allObjects[i-offset,2] = instance_find(all,i).x;
		allObjects[i-offset,3] = instance_find(all,i).y;
		allObjects[i-offset,4] = instance_find(all,i).image_xscale;
		allObjects[i-offset,5] = instance_find(all,i).image_yscale;
		allObjects[i-offset,6] = instance_find(all,i).image_angle;
		allObjects[i-offset,7] = instance_find(all,i).image_blend;
		allObjects[i-offset,8] = instance_find(all,i).image_alpha;
		}
		else
		++offset;
	}
	instance_deactivate_all(true);

	gamePaused = true;
	
}else
{

	instance_activate_all();
	gamePaused = false;
	
	allObjects = 0;
}
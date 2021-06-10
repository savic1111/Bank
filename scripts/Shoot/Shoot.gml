// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Shoot(){
firingdelay = firingdelay-1;
recoil = max(0,recoil-1);
if(mouse_check_button_pressed(mb_left))
  {
	
	//gamepad_set_vibration(4,1,1)
	if(MasterMainhero.ammo>0)
	{
	recoil = 4;
	firingdelay=5;
	
	ScreenShake(222,100);
	
	var obj = instance_create_layer(x,y,"Bullets",Bullet);
	
	    with(obj)
	        {
		      obj.speed = 35;
		      obj.direction = other.image_angle + random_range(-1,1);
		      obj.image_angle=direction;
			  
		      MasterMainhero.ammo-=1;
            }
			
	x=x-lengthdir_x(recoil,image_angle);
	y=y-lengthdir_y(recoil,image_angle);
  }
  }



if(!instance_exists(oSpecialAmmo))
{
if(mouse_check_button_pressed(mb_right))
{
	
	if(MasterMainhero.special_ammo>0)
	{
	recoil = 4;
	firingdelay=5;
	ScreenShake(222,100);
	
	with(instance_create_layer(x,y,"Bullets",oSpecialAmmo))
	{
		speed=25;
		//Разброс 
		direction = other.image_angle + random_range(-1,1);
		image_angle=direction
		MasterMainhero.special_ammo-=1;
	}
}
	x=x-lengthdir_x(recoil,image_angle);
	y=y-lengthdir_y(recoil,image_angle);
}
}else if  instance_exists(oSpecialAmmo)
	{
		if mouse_check_button_pressed(mb_right)
		{
			MasterMainhero.x = oSpecialAmmo.x;
			MasterMainhero.y = oSpecialAmmo.y;
			
			with (oSpecialAmmo)
			{
				instance_destroy();
			}
		}
	
	}
}

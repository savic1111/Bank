/// @description Insert description here
function PickUpGun() {
	// You can write your code in this editor
	x=TestMainhero.x;
	y=TestMainhero.y+5;


	direction = point_direction(x ,y,mouse_x,mouse_y);
	image_angle = direction;

	var mouseb;
	if(automatic) mouseb = mouse_check_button(mb_left); else mouseb = mouse_check_button_pressed(mb_left);


	if(mouseb)
	{	
		
		if(current_cd==0)
		{
			current_cd = cooldown;
			current_delay = startup;
		}
	}

switch weapon
			{
				case 1:
				if(RifleAmmo>0)
				{
					if(mouse_check_button_pressed(mb_left))
	{	
		
		if(current_cd==0)
		{
			current_cd = cooldown;
			current_delay = startup;
		}
	if(current_delay ==0) and (projectile!=-1)
	{
			ScreenShake(2,10);
			with(instance_create_layer(x+lengthdir_x(length,direction),y+lengthdir_y(length,direction),"Bullets",projectile))
			{
				direction = other.direction;
				speed = other.bulletspeed;
			}
			RifleAmmo-=1;
			}
				}
				}
			break;
			
			case 2:
				if(ShotGunAmmo>0)
				{
					if(mouse_check_button_pressed(mb_left))
	{	
		
		if(current_cd==0)
		{
			current_cd = cooldown;
			current_delay = startup;
		}
				if(current_delay ==0) and (projectile!=-1)
	{
			ScreenShake(2,10);
			with(instance_create_layer(x+lengthdir_x(length,direction),y+lengthdir_y(length,direction),"Bullets",projectile))
			{
				direction = other.direction;
				speed = other.bulletspeed;
			}
			ShotGunAmmo-=1;
			}
				}
				}
				break;
			
	
		with(TestMainhero)
		{
			hspeed_-=lengthdir_x(other.recoil_push,other.direction);
			vspeed_-=lengthdir_y(other.recoil_push,other.direction);
		}
		current_recoil = recoil;
	}
	current_delay = max (-1,current_delay-1);

	if(current_delay==-1) current_cd = max(0,current_cd-1);
	current_recoil = max(0,floor(current_recoil*0.8));

	depth = TestMainhero.depth-1;

		if(image_angle >90)and(image_angle<270)
		{
			image_yscale=-1;
		}
		else
		{
			image_yscale = 1;
		}


}

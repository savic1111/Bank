/// @description Insert description here
// You can write your code in this editor
if(global.pause) exit;

key_right = keyboard_check(vk_right) || gamepad_button_check(4,gp_padr)|| (gamepad_axis_value(4,gp_axislh)=1);
key_left = keyboard_check(vk_left)|| gamepad_button_check(4,gp_padl)|| (gamepad_axis_value(4,gp_axislh)=-1);
key_up = keyboard_check_pressed(vk_up);

hinput = key_right-key_left;

if(hp<=0)
{
	game_restart();
}
if keyboard_check_pressed(ord("Q"))
	{
		global.pause = 1;
	}
	
	if(place_meeting(x,y,AirPlus))
	{
		airjump+=1;
	}
  
 if(place_meeting(x,y,AudioGhost))
   {
	 hp-=0.1;
   }
   
    if(place_meeting(x,y+1,JumpPlatform))
   {
	 vspeed_-=117;
   }
 
 if(!instance_exists(oBoomerang))
   {
     if(keyboard_check_pressed(ord("R")))
        {
	      instance_create_layer(x+20,y,"Bullets",oBoomerang);
        } 
   }
 
 if(place_meeting(x,y,oLever) and keyboard_check_pressed(ord("T")))
   {
	 with(oLever)
	    {
		  if(condition !=0)
		    {
		       condition = 0;
		       image_index = 0;
		    }else
		    {
			  condition = 1;
		      image_index = 1;
		    }			 
	    }
   }
   

 switch(state)
       {
	        case state_hero.idle: 
                  Running(30,4);
                  DoubleJump(jump_height);
		          dash();
		          GravityAndJump();
		          Walking();
		     
		          break;
		  
	        case state_hero.sit: 
     
		          break;
	
	        case state_hero.trans: 
                 Running(30,4);
                 DoubleJump(jump_height);
		         Walking();
				 
		         break;
      }
		  
		  
		  if keyboard_check_pressed(ord("F"))
		  {
			  state = state_hero.sit
		  }

if(keyboard_check_pressed(ord("T")))
	{
if place_meeting(x,y,oAirTube)
{
		path_start(pathTut,20,path_action_stop,0);
	
}
	}
	
	
	

HorizontalCollision(Platform);
HorizontalCollision(Wall);
x+=hspeed_;


VerticalCollision(Platform);
VerticalCollision(oGround);
y+=vspeed_;











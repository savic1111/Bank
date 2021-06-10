/// @description Insert description here
// You can write your code in this editor

var jump = keyboard_check_pressed(vk_up);

onWall = place_meeting(x-10,y,Wall) - place_meeting(x+10,y,Wall);
onGround = place_meeting(x,y+1,oGround);
if(global.pause) exit;

dashing = keyboard_check_pressed(ord("K"));
key_right = keyboard_check(vk_right) || gamepad_button_check(4,gp_padr)|| (gamepad_axis_value(4,gp_axislh)=1);
key_left = keyboard_check(vk_left)|| gamepad_button_check(4,gp_padl)|| (gamepad_axis_value(4,gp_axislh)=-1);
key_up = keyboard_check_pressed(vk_up);

dash_duration = max(dash_duration-1,0);

hinput = key_right-key_left;

//FIndDoor();
if(dash_duration >0)
{
	vspeed_=0;
}

if(keyboard_check_pressed(ord("K")))
{
	dash_duration = 10;
	x += image_xscale*dash_speed;
}


if(hp<=0)
{
	game_restart();
}
if keyboard_check_pressed(ord("Q"))
	{
		global.pause = 1;
	}
	
  
 if(place_meeting(x,y,AudioGhost))
   {
	 hp-=0.1;
   }
   
    if(place_meeting(x,y+1,JumpPlatform))
   {
	 vspeed_-=27;
   }
 
 if(!instance_exists(oBoomerang))
   {
     if(keyboard_check_pressed(ord("R")))
        {
	      instance_create_layer(x+120,y,"Bullets",oBoomerang);
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
   
   //VerticalCollision(Wall);
   
 
	   if place_meeting(x-1,y,Wall) and !place_meeting(x,y+1,Wall) 
		{
			
		 vspeed_ = 0;
		  gravity_=0;
	   }
	   
	    if place_meeting(x+1,y,Wall) and !place_meeting(x,y+1,Wall) 
	   {
	
		vspeed_ = 0;
		gravity_=0;
		   
	   }
   if onWall == 0
   {
	   gravity_ = .8;
   }
   
 
   
  
   
   if(movement==true)
		   {

 switch(state)
       {
		  
	        case state_hero.idle: 
			
                  Running(30,4);
                  DoubleJump(-20);
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
      }
		  
		  
		  if keyboard_check_pressed(ord("F"))
		  {
			  state = state_hero.sit
		  }


if(up)
{
	y-=2;
}

if place_meeting(x,y,oAirTube)
{
	if(keyboard_check_pressed(ord("T")))
	{
		up = true;
		movement = false;
	
    }
}else
{
	up = false;
		movement = true;
}

if place_meeting(x,y,oAirTube)
{
	if(keyboard_check_pressed(ord("L")))
	{
		path_start(PathTube,10,path_action_stop,0)
	
    }
}

	
	
	
	
	
	
	
	
	
		if place_meeting(x,y+5,oICe)
		{
			kindofground = 0.2;
		
			friction_ = 0.00001;
			
		}else
		{
			kindofground = 1;
			friction_ = 1;
		}
		
	
	
	
	

HorizontalCollision(Platform);
HorizontalCollision(Wall);
HorizontalCollision(oGround);
x+=hspeed_;



VerticalCollision(Platform);
VerticalCollision(oGround);
y+=vspeed_;










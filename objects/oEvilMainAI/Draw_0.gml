x_=camera_get_view_x(view_camera[0])+800;
y_=camera_get_view_y(view_camera[0]) + 100;
var i = 0;

switch(fireball)
{
	case bad_things.darkScreen:
	
	
	choice_index=0;
	if(dark>0)
	{
	timer = 0;
	timer_ability+=1/room_speed;
	if(timer_ability<5)
	{
		BlackScreen();
	}else
	{
	    dark-=1;	
		fireball = bad_things.restTime;
		timer_ability = 0;
	}
	}else
	{
		fireball = choose(bad_things.whiteScreen);
	}
	break;
	
	case bad_things.whiteScreen:
	choice_index=1;
	if(white>0)
	{
	timer = 0;

	timer_ability+=1/room_speed;
	if(timer_ability<5)
	{
		DontTouchPol();
	}else
	{
	white-=1;	
		fireball = bad_things.restTime;
		timer_ability = 0;
	}
	}else
	{
		fireball  =choose(bad_things.darkScreen);
	}
	break;
	
	case bad_things.restTime:
	break;
}




draw_text(x,y-10,timer);
draw_text(x,y,timer_ability);
draw_text(x,y+100,randomAction);
repeat(EvilActions)
{
	draw_set_font(fnt_menu);
	draw_set_halign(fa_center);
	draw_set_color(c_ltgray);
	
	if(choice_index == i) draw_set_color(c_red);
	draw_text(x_+60,y_+choice_h*i,EvilAction[i]);
	draw_sprite_stretched(SprHealthBar,0,x_+150,y_+choice_h*i,min((EvilAbility[i]/EvilAbility_max[i])*300,800), 40);
	draw_sprite(SprHealthBarBorder,0,x_+150,y_+choice_h*i);
	i++;
}

    draw_sprite_stretched(SprHealthBar,0,x_+150,y_+choice_h*3,min((points_evil/points_evil_max)*300,800), 40);
	draw_sprite(SprHealthBarBorder,0,x_+150,y_+choice_h*3);
/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_INTRO);

draw_text_color(x,y,text[page],c_white,c_white,c_white,c_white,alpha);
timer++;

if(timer>100 and timer <300)
{	
	alpha +=0.01;
	alpha = clamp(alpha,0,1);
}	

if(timer>300)
{	
	alpha -=0.01;	
	alpha = clamp(alpha,0,1);
}	

if(timer>500) and(page+1<array_length_1d(text))
{
	page+=1
	timer = 0;
}
if(timer ==510  )
{   
	
	room_goto(Room11)
}


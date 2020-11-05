/// @description Insert description here
// You can write your code in this editor

if(y >=TestMainhero.y)
{
	
	instance_destroy();
}

/*if(flyDirect="right")
{
	forceX = clamp(forceX,0,forceX-friction_add);
	x+=forceX;
	
	spin= -10;
}

if(flyDirect="left")
{
	forceX = clamp(forceX,0,forceX-friction_add);
	x+=forceX;
	
	spin= 10;
}

forceY = clamp(forceY,forceY+gravity_add,2);
y+=forceY;

image_angle+=spin;


if(draw_checkOnce==false)
{
	draw_checkOnce = true;
	
	for(i=1;i<400;i++){
		
		drawX[i]=drawX[i-1];
		drawY[i] = drawY[i-1];
		
		if(flyDirect=="right")
		{
			forceX_draw = clamp(forceX_draw,0,forceX_draw-friction_add);
			drawX[i] += forceX_draw;
		}
		
		if(flyDirect=="left")
		{
			forceX_draw = clamp(forceX_draw,0,forceX_draw-friction_add);
			drawX[i] -= forceX_draw;
		}
		
		forceY_draw = clamp(forceY_draw,forceY_draw+gravity_add,2);
		drawY[i] +=forceY_draw;
	}
}

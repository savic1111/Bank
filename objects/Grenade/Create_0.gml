/// @description Insert description here
// You can write your code in this editor
forceX = 10;
forceY = -1;

forceX_draw = 1;
forceY_draw = -1;

draw_steps = 410;

gravity_add = 0.01;
friction_add = 0.001;

flyDirect = "right";

spin = 10;

drawX[0] = x;
drawY[0] = y;

draw_checkOnce = false;

for(j=1;j<draw_steps;j++)
{
	drawX[j] = 0;
	drawY[j] = 0;
}
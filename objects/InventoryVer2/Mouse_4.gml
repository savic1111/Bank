/// @description Insert description here
// You can write your code in this editor
var gx = x_to_gx(mouse_x);
var gy = y_to_gy(mouse_y);

var add_item = choose(item.poison,item.sword);

if(count[# gx,gy]==0)
{
	AddItem(gx+1,gy+1,add_item);

}else
{
	count[# gx, gy] ++;
}
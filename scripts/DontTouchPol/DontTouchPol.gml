// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DontTouchPol(){
	
randomize();
var snowRandom = ceil(random(1));

if(snowRandom == 1){
	
	instance_create_layer(1,6532,"Instances",oSnow);
}
}
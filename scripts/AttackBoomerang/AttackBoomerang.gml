// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AttackBoomerang(){
attack_boomerang = keyboard_check_released(ord("M"));



if(attack_boomerang == true)
    {
	var boomerang = instance_create_layer(x+70*image_xscale,y,"Instances",oBoomerang);
	boomerang.direction = Gun.image_angle;
	global.speedBoomerang = 20;
	boomerang.speed = global.speedBoomerang;	
    }
	
}
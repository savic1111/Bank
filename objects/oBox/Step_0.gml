/// @description Insert description here
// You can write your code in this editor
if(hp_box<=0)
{
	
	with(AudioGhost)
	{
		instance_destroy();
		oConditions.audioGhost+=1;
	}
	sprite_index = BoxAnim2;
}
if(sprite_index = BoxAnim)
{
if(image_index>=image_number-1)
	 {
		sprite_index=SprBox;
		
	 }
}

if(sprite_index = BoxAnim2)
{
if(image_index>=9)
	 {
		image_speed = 0;
		//image_index=9;
		
	 }
}


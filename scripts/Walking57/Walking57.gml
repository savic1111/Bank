function Walking() {
	
	if(hinput!=0)
{
	acceleration = kindofground
	hspeed_+=(hinput*acceleration);
	hspeed_ = clamp(hspeed_,-max_hspeed_,max_hspeed_)
}else
{
	hspeed_ = lerp(hspeed_,0,friction_);
}


	
	
	if(hspeed_==0)
	{
		sprite_index = SprMainhero;
	}
	else if(hspeed_>0)
	{
		sprite_index=SprMainHeroRun;
	}else
	{
		sprite_index=SprMainHeroRunLeft;
	}
	
}

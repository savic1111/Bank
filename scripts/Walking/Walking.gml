function Walking() {
	
	if(hinput!=0)
{
	hspeed_+=(hinput*acceleration)*global.timeMultiplier;
	hspeed_ = clamp(hspeed_,-max_hspeed_*global.timeMultiplier,max_hspeed_*global.timeMultiplier)
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

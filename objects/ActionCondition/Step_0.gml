/// @description Insert description here
// You can write your code in this editor
switch(RandomCondition.chosen_condition)
{
	case "Kill ALL.":
	     if(!instance_exists(Enemy))
		 {
			 with(MasterMainhero)
			 {
				 instance_destroy();
			 }
		 }
}
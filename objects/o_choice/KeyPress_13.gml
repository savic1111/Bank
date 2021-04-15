

if(global.pause == 1)
  {
  if(points1>0)
    {
   switch(choice_index)
         {
	      case 0:	
	             MasterMainhero.ammo+=points1/points1;
	             points1-=1;
	      break;
	
	      case 1:
                 MasterMainhero.jump_height-=points1/points1;
	             points1-=1;
	      break;
	
	      case 2:
	             MasterMainhero.hp+=points1/points1;
	             points1-=1;
	      break;
	
	      case 3:

	      break;
        }
   }
}
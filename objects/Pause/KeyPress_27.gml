/// @description Insert description here
// You can write your code in this editor


if (oTimerForUp.timeUp == 100)
   {
    if (global.pause == 0)
       {
	      global.pause = 1;
       }else
       {
	      global.pause = 0;
	      oTimerForUp.timeUp=0;
       }
   }
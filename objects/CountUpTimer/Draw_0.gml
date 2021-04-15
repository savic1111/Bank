/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_menu);

	draw_set_color(c_ltgray);

if(global.seconds<10)&&(global.minutes<10){
	draw_text(MainHero.x-100,MainHero.y-400,string(global.minutes)+":0"+string(global.seconds));
}else if(global.seconds>=10)&&(global.minutes>=10){
	draw_text(MainHero.x-100,MainHero.y-400,string(global.minutes)+":"+string(global.seconds));
}else if(global.seconds<10)&&(global.minutes>=10){
	draw_text(MainHero.x-100,MainHero.y-400,string(global.minutes)+":0"+string(global.seconds));
}else if(global.seconds>=10)&&(global.minutes<10){
	draw_text(MainHero.x-100,MainHero.y-400,string(global.minutes)+":"+string(global.seconds));
} 
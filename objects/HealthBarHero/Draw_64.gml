/// @description Insert description here
// You can write your code in this editor
draw_sprite_stretched(SprHealthBar,0,76,36,min((TestMainhero.hp_hero/TestMainhero.hp_hero_max)*TestMainhero.healthbar_width,TestMainhero.healthbar_width), TestMainhero.healthbar_height);
draw_sprite(SprHealthBarBorder,0,76,36);

/// @description Insert description here
// You can write your code in this editor

global.pause = 0;

gamePaused = false;
allObjects[0,0] = noone;

menu_x = TestMainhero.x;
menu_y = TestMainhero.y;
button_h = 32;

button[0] = "New Game";
button[1] = "Load";
button[2] = "Setting";
button[3] = "Exit";
buttons = array_length_1d(button);

menu_index = 0;
last_selected = 0;
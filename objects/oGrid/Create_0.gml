/// @description Insert description here
// You can write your code in this editor
var cell_width=96;
var cell_height = 96;

var hcells = room_width div cell_width;
var vcells = room_width div cell_height;

global.grid = mp_grid_create(0,0,hcells,vcells,cell_width,cell_height);

//Add the walls
mp_grid_add_instances(global.grid,Wall,false);
mp_grid_add_instances(global.grid,oGround,false);
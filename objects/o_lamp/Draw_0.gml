/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_primitive_begin(pr_trianglelist);
draw_vertex_color(x+150,313,c_white,0.5);
draw_vertex_color(x-240,500,c_white,0);
draw_vertex_color(x+100,500,c_white,0);

draw_primitive_end();

draw_primitive_begin(pr_trianglelist);
draw_vertex_color(x-160,313,c_white,0.5);
draw_vertex_color(x-240,500,c_white,0);
draw_vertex_color(x+150,313,c_white,0.5);

draw_primitive_end();


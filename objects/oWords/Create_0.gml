/// @description Insert description here
// You can write your code in this editor
timer = 0;
alpha = 0;
page = 0;
count_part = 0;

text[0] = "ALL представляет";
text[1] = "Точно не  DARKNESS OF MORTUSO";

mySystem = part_system_create();

myParticle = part_type_create();
part_type_shape(myParticle,pt_shape_flare);
part_type_life(myParticle,5,10);
part_type_scale(myParticle,0.7,0.7);
part_type_size(myParticle,0,2,1,0);

part_type_color1(myParticle,c_white);
part_type_color2(myParticle,c_white,c_white);
part_type_color3(myParticle,c_white,c_white,c_white);
part_type_blend(myParticle,1);

part_type_alpha1(myParticle,1);
part_type_alpha2(myParticle,1,0);
part_type_alpha3(myParticle,1.0,1.0,1.0);
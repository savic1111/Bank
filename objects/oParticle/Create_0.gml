/// @description Insert description here
// You can write your code in this editor
mySystem = part_system_create();

particle_Dust = part_type_create();

part_type_sprite(particle_Dust,spr_dust,0,0,1);

part_type_direction(particle_Dust,0,359,0,1);
part_type_speed(particle_Dust,0.1,0.2,-0.004,0);
part_type_life(particle_Dust,50,70);

part_type_orientation(particle_Dust,0,359,0.1,1,0);
part_type_alpha3(particle_Dust,0.1,0.2,0.01);
part_type_size(particle_Dust,1,1.5,0.001,0);
myParticle = part_type_create();
part_type_shape(myParticle,pt_shape_ring);
part_type_sprite(myParticle,SprBullet,1,0,0);
part_type_life(myParticle,15,60);
part_type_scale(myParticle,1,1);
part_type_size(myParticle,1,3,0,0);
part_type_orientation(myParticle,0,0,0,0,1);
part_type_color1(myParticle,c_white);
part_type_color2(myParticle,c_orange,c_blue);
part_type_color3(myParticle,c_green,c_lime,c_maroon);
part_type_blend(myParticle,1);
part_type_direction(myParticle,0,180,0,0);
part_type_speed(myParticle,2,4,0,0);
part_type_gravity(myParticle,0.20,270);
part_type_alpha1(myParticle,1);
part_type_alpha2(myParticle,1,0);
part_type_alpha3(myParticle,0.8,0.5,0);
choice[0] = "Ammo";
choice[1] = "Jump";
choice[2] = "Health";

ability[0]= MasterMainhero.ammo;
ability[1]= MasterMainhero.jump_height;
ability[2]= MasterMainhero.hp;
ability[3]= points1;


abilities = array_length_1d(ability);

ability_max[0]= MasterMainhero.ammo_max;
ability_max[1]= MasterMainhero.jump_height_max;
ability_max[2]= MasterMainhero.hp_max;
ability_max[3]= points_max;

abilities_max = array_length_1d(ability_max);



choices = array_length_1d(choice);
choice_move = keyboard_check_pressed(vk_down)-keyboard_check_pressed(vk_up);


if(global.pause == 1)
{
choice_index+=choice_move;

if(choice_index<0) choice_index = choices-1;
if(choice_index>choices-1) choice_index = 0;

last_selected = choice_index;
}

/// @description Insert description here
// You can write your code in this editor
condition[0] = "Kill 3 enemies   "+ string(enemy_max) + "/"+string(enemy);
condition[1] = "Leha Ageykin is Kusoj Govna   "+ string(audioGhostMax) + "/"+string(audioGhost);




conditions = array_length_1d(condition);


if(enemy_max==enemy)
{
	complete = true;
}

if(audioGhostMax==audioGhost)
{
	complete_ghost = true;
}

/// @description Insert description here
// You can write your code in this editor



weapons[0] = ds_map_create();
ds_map_add(weapons[0],"sprite",-1);
ds_map_add(weapons[0],"recoil",0);
ds_map_add(weapons[0],"recoil_push",0);
ds_map_add(weapons[0],"damage",0);
ds_map_add(weapons[0],"projectile",-1);
ds_map_add(weapons[0],"length",0);
ds_map_add(weapons[0],"cooldown",0);
ds_map_add(weapons[0],"bulletspeed",0);
ds_map_add(weapons[0],"automatic",false);
ds_map_add(weapons[0],"startup",0);

weapons[1] = ds_map_create();
ds_map_add(weapons[1],"sprite",SprWeapon1);
ds_map_add(weapons[1],"recoil",3);
ds_map_add(weapons[1],"recoil_push",0);
ds_map_add(weapons[1],"damage",1);
ds_map_add(weapons[1],"projectile",Bullet);
ds_map_add(weapons[1],"length",24);
ds_map_add(weapons[1],"cooldown",3);
ds_map_add(weapons[1],"bulletspeed",10);
ds_map_add(weapons[1],"automatic",false);
ds_map_add(weapons[1],"startup",0);
ds_map_add(weapons[1],"Ammo",RifleAmmo);

weapons[2] = ds_map_create();
ds_map_add(weapons[2],"sprite",SprWeapon2);
ds_map_add(weapons[2],"recoil",6);
ds_map_add(weapons[2],"recoil_push",2);
ds_map_add(weapons[2],"damage",3);
ds_map_add(weapons[2],"projectile",Bullet);
ds_map_add(weapons[2],"length",24);
ds_map_add(weapons[2],"cooldown",10);
ds_map_add(weapons[2],"bulletspeed",7);
ds_map_add(weapons[2],"automatic",true);
ds_map_add(weapons[2],"startup",0);
ds_map_add(weapons[2],"Ammo",ShotGunAmmo);


Ammo = 0;
weapon = 0;
ammo[array_length_1d(weapons)-1]=0;
ammo[0] = -1;
magazine = 7;

ChangeWeapon(0);

current_cd = 0;
current_delay = -1;
current_recoil = 0;
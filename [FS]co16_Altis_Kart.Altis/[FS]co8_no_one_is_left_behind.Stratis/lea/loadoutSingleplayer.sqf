/**
* Generated by LEA for Arma 3
* Version: 2.0.18
* Wed Jun 04 23:32:44 CEST 2014
* Mission file name: [FS]co8_no_one_is_left_behind.Stratis
* Mission name: [FS]co8_no_one_is_left_behind.Stratis
* Required mods:
* + XMedSys
* + ArmA 3
* + TFAR
* 
* Call the script: _dummy = [] execvm "lea\loadoutSingleplayer.sqf";
* 
*/

/**
* Loadout for crates
*/

//Empty, nothing to do. unit heliStart
//Empty, nothing to do. unit heliStart2

/**
* Loadout for soldiers units
*/

if (!isNil "tl1") then {
removeallweapons tl1;
removeallassigneditems tl1;
removeHeadgear tl1;
removeUniform tl1;
removeBackpack tl1;
removeVest tl1;
removeGoggles tl1;

tl1 addWeapon "ItemMap";
tl1 addWeapon "ItemWatch";
tl1 addWeapon "ItemCompass";
tl1 addWeapon "ItemGPS";
tl1 addWeapon "H_HelmetB_plain_blk";
tl1 addWeapon "G_Tactical_Clear";
tl1 addWeapon "Binocular";
tl1 addBackpack "B_TacticalPack_blk";
(backpackContainer tl1) addmagazinecargoGlobal ["30Rnd_65x39_caseless_mag_Tracer",1];
tl1 addWeapon "arifle_MX_Black_F";
removeBackpack tl1;
tl1 addPrimaryWeaponItem "acc_pointer_IR";
tl1 addPrimaryWeaponItem "optic_Aco";
tl1 addBackpack "B_TacticalPack_blk";
(backpackContainer tl1) addmagazinecargoGlobal ["9Rnd_45ACP_Mag",1];
tl1 addWeapon "hgun_ACPC2_F";
removeBackpack tl1;
tl1 addBackpack "B_Carryall_mcamo";
clearItemCargoGlobal (backpackContainer tl1);
clearMagazineCargoGlobal (backpackContainer tl1);
clearWeaponCargoGlobal (backpackContainer tl1);
(backpackContainer tl1) additemcargoGlobal ["x39_bandage",5];
(backpackContainer tl1) addmagazinecargoGlobal ["30Rnd_65x39_caseless_mag_Tracer",10];
tl1 addVest "V_TacVestIR_blk";
clearItemCargoGlobal (vestContainer tl1);
clearMagazineCargoGlobal (vestContainer tl1);
clearWeaponCargoGlobal (vestContainer tl1);
(vestContainer tl1) additemcargoGlobal ["FirstAidKit",1];
(vestContainer tl1) addmagazinecargoGlobal ["30Rnd_65x39_caseless_mag_Tracer",4];
(vestContainer tl1) addmagazinecargoGlobal ["9Rnd_45ACP_Mag",1];
tl1 addItemToVest "HandGrenade";
tl1 addItemToVest "HandGrenade";
tl1 addUniform "U_B_SpecopsUniform_sgg";
clearItemCargoGlobal (uniformContainer tl1);
clearMagazineCargoGlobal (uniformContainer tl1);
clearWeaponCargoGlobal (uniformContainer tl1);
(uniformContainer tl1) addmagazinecargoGlobal ["9Rnd_45ACP_Mag",2];
tl1 addWeapon "tf_anprc152";
tl1 selectWeapon (primaryWeapon tl1);
};

if (!isNil "g5") then {
removeallweapons g5;
removeallassigneditems g5;
removeHeadgear g5;
removeUniform g5;
removeBackpack g5;
removeVest g5;
removeGoggles g5;

g5 addWeapon "ItemMap";
g5 addWeapon "ItemWatch";
g5 addWeapon "ItemCompass";
g5 addWeapon "ItemGPS";
g5 addWeapon "H_HelmetLeaderO_ocamo";
g5 addBackpack "B_TacticalPack_blk";
(backpackContainer g5) addmagazinecargoGlobal ["30Rnd_65x39_caseless_mag_Tracer",1];
g5 addWeapon "arifle_MX_GL_Black_F";
removeBackpack g5;
g5 addPrimaryWeaponItem "acc_pointer_IR";
g5 addPrimaryWeaponItem "optic_Aco";
g5 addBackpack "B_TacticalPack_blk";
(backpackContainer g5) addmagazinecargoGlobal ["9Rnd_45ACP_Mag",1];
g5 addWeapon "hgun_ACPC2_F";
removeBackpack g5;
g5 addBackpack "B_Carryall_oli";
clearItemCargoGlobal (backpackContainer g5);
clearMagazineCargoGlobal (backpackContainer g5);
clearWeaponCargoGlobal (backpackContainer g5);
(backpackContainer g5) additemcargoGlobal ["x39_bandage",5];
(backpackContainer g5) addmagazinecargoGlobal ["30Rnd_65x39_caseless_mag_Tracer",10];
(backpackContainer g5) addmagazinecargoGlobal ["1Rnd_Smoke_Grenade_shell",8];
(backpackContainer g5) addmagazinecargoGlobal ["UGL_FlareWhite_F",8];
(backpackContainer g5) addmagazinecargoGlobal ["1Rnd_HE_Grenade_shell",7];
g5 addVest "V_PlateCarrier1_blk";
clearItemCargoGlobal (vestContainer g5);
clearMagazineCargoGlobal (vestContainer g5);
clearWeaponCargoGlobal (vestContainer g5);
(vestContainer g5) additemcargoGlobal ["FirstAidKit",1];
(vestContainer g5) addmagazinecargoGlobal ["30Rnd_65x39_caseless_mag_Tracer",4];
(vestContainer g5) addmagazinecargoGlobal ["9Rnd_45ACP_Mag",1];
(vestContainer g5) addmagazinecargoGlobal ["1Rnd_HE_Grenade_shell",3];
g5 addItemToVest "HandGrenade";
g5 addItemToVest "HandGrenade";
g5 addUniform "U_B_SpecopsUniform_sgg";
clearItemCargoGlobal (uniformContainer g5);
clearMagazineCargoGlobal (uniformContainer g5);
clearWeaponCargoGlobal (uniformContainer g5);
(uniformContainer g5) addmagazinecargoGlobal ["9Rnd_45ACP_Mag",3];
g5 addWeapon "tf_anprc152";
g5 selectWeapon (primaryWeapon g5);
};

if (!isNil "gl2") then {
removeallweapons gl2;
removeallassigneditems gl2;
removeHeadgear gl2;
removeUniform gl2;
removeBackpack gl2;
removeVest gl2;
removeGoggles gl2;

gl2 addWeapon "ItemMap";
gl2 addWeapon "ItemWatch";
gl2 addWeapon "ItemCompass";
gl2 addWeapon "ItemGPS";
gl2 addWeapon "H_HelmetB_plain_blk";
gl2 addWeapon "G_Tactical_Clear";
gl2 addWeapon "Binocular";
gl2 addBackpack "B_TacticalPack_blk";
(backpackContainer gl2) addmagazinecargoGlobal ["30Rnd_65x39_caseless_mag_Tracer",1];
gl2 addWeapon "arifle_MX_Black_F";
removeBackpack gl2;
gl2 addPrimaryWeaponItem "acc_pointer_IR";
gl2 addPrimaryWeaponItem "optic_Aco";
gl2 addBackpack "B_TacticalPack_blk";
(backpackContainer gl2) addmagazinecargoGlobal ["9Rnd_45ACP_Mag",1];
gl2 addWeapon "hgun_ACPC2_F";
removeBackpack gl2;
gl2 addBackpack "tf_rt1523g";
clearItemCargoGlobal (backpackContainer gl2);
clearMagazineCargoGlobal (backpackContainer gl2);
clearWeaponCargoGlobal (backpackContainer gl2);
(backpackContainer gl2) additemcargoGlobal ["x39_bandage",5];
(backpackContainer gl2) addmagazinecargoGlobal ["30Rnd_65x39_caseless_mag_Tracer",10];
gl2 addVest "V_TacVestIR_blk";
clearItemCargoGlobal (vestContainer gl2);
clearMagazineCargoGlobal (vestContainer gl2);
clearWeaponCargoGlobal (vestContainer gl2);
(vestContainer gl2) additemcargoGlobal ["FirstAidKit",1];
(vestContainer gl2) addmagazinecargoGlobal ["30Rnd_65x39_caseless_mag_Tracer",4];
(vestContainer gl2) addmagazinecargoGlobal ["9Rnd_45ACP_Mag",1];
gl2 addItemToVest "HandGrenade";
gl2 addItemToVest "HandGrenade";
gl2 addUniform "U_B_SpecopsUniform_sgg";
clearItemCargoGlobal (uniformContainer gl2);
clearMagazineCargoGlobal (uniformContainer gl2);
clearWeaponCargoGlobal (uniformContainer gl2);
(uniformContainer gl2) addmagazinecargoGlobal ["9Rnd_45ACP_Mag",3];
gl2 addWeapon "tf_anprc152";
gl2 selectWeapon (primaryWeapon gl2);
};

if (!isNil "g4") then {
removeallweapons g4;
removeallassigneditems g4;
removeHeadgear g4;
removeUniform g4;
removeBackpack g4;
removeVest g4;
removeGoggles g4;

g4 addWeapon "ItemMap";
g4 addWeapon "ItemWatch";
g4 addWeapon "ItemCompass";
g4 addWeapon "ItemGPS";
g4 addWeapon "H_HelmetLeaderO_ocamo";
g4 addBackpack "B_TacticalPack_blk";
(backpackContainer g4) addmagazinecargoGlobal ["30Rnd_65x39_caseless_mag_Tracer",1];
g4 addWeapon "arifle_MX_Black_F";
removeBackpack g4;
g4 addPrimaryWeaponItem "acc_pointer_IR";
g4 addPrimaryWeaponItem "optic_Aco";
g4 addBackpack "B_TacticalPack_blk";
(backpackContainer g4) addmagazinecargoGlobal ["9Rnd_45ACP_Mag",1];
g4 addWeapon "hgun_ACPC2_F";
removeBackpack g4;
g4 addBackpack "tf_rt1523g";
clearItemCargoGlobal (backpackContainer g4);
clearMagazineCargoGlobal (backpackContainer g4);
clearWeaponCargoGlobal (backpackContainer g4);
(backpackContainer g4) additemcargoGlobal ["x39_bandage",5];
(backpackContainer g4) addmagazinecargoGlobal ["30Rnd_65x39_caseless_mag_Tracer",10];
g4 addVest "V_PlateCarrier1_blk";
clearItemCargoGlobal (vestContainer g4);
clearMagazineCargoGlobal (vestContainer g4);
clearWeaponCargoGlobal (vestContainer g4);
(vestContainer g4) additemcargoGlobal ["FirstAidKit",1];
(vestContainer g4) addmagazinecargoGlobal ["30Rnd_65x39_caseless_mag_Tracer",4];
(vestContainer g4) addmagazinecargoGlobal ["9Rnd_45ACP_Mag",1];
g4 addItemToVest "HandGrenade";
g4 addItemToVest "HandGrenade";
g4 addUniform "U_B_SpecopsUniform_sgg";
clearItemCargoGlobal (uniformContainer g4);
clearMagazineCargoGlobal (uniformContainer g4);
clearWeaponCargoGlobal (uniformContainer g4);
(uniformContainer g4) addmagazinecargoGlobal ["9Rnd_45ACP_Mag",3];
g4 addWeapon "tf_anprc152";
g4 selectWeapon (primaryWeapon g4);
};

if (!isNil "g7") then {
removeallweapons g7;
removeallassigneditems g7;
removeHeadgear g7;
removeUniform g7;
removeBackpack g7;
removeVest g7;
removeGoggles g7;

g7 addWeapon "ItemMap";
g7 addWeapon "ItemWatch";
g7 addWeapon "ItemCompass";
g7 addWeapon "ItemGPS";
g7 addWeapon "H_HelmetLeaderO_ocamo";
g7 addBackpack "B_TacticalPack_blk";
(backpackContainer g7) addmagazinecargoGlobal ["30Rnd_65x39_caseless_mag_Tracer",1];
g7 addWeapon "arifle_MXC_Black_F";
removeBackpack g7;
g7 addPrimaryWeaponItem "acc_pointer_IR";
g7 addPrimaryWeaponItem "optic_Aco";
g7 addBackpack "B_TacticalPack_blk";
(backpackContainer g7) addmagazinecargoGlobal ["9Rnd_45ACP_Mag",1];
g7 addWeapon "hgun_ACPC2_F";
removeBackpack g7;
g7 addBackpack "B_Carryall_oli";
clearItemCargoGlobal (backpackContainer g7);
clearMagazineCargoGlobal (backpackContainer g7);
clearWeaponCargoGlobal (backpackContainer g7);
(backpackContainer g7) additemcargoGlobal ["x39_medikit",4];
(backpackContainer g7) additemcargoGlobal ["FirstAidKit",5];
(backpackContainer g7) additemcargoGlobal ["x39_bandage",10];
(backpackContainer g7) additemcargoGlobal ["x39_morphine",10];
(backpackContainer g7) additemcargoGlobal ["x39_defibrillator",1];
(backpackContainer g7) additemcargoGlobal ["x39_bloodbag",5];
(backpackContainer g7) additemcargoGlobal ["x39_epinephrine",10];
(backpackContainer g7) additemcargoGlobal ["x39_tourniquet",8];
g7 addVest "V_PlateCarrier1_blk";
clearItemCargoGlobal (vestContainer g7);
clearMagazineCargoGlobal (vestContainer g7);
clearWeaponCargoGlobal (vestContainer g7);
(vestContainer g7) additemcargoGlobal ["FirstAidKit",2];
(vestContainer g7) additemcargoGlobal ["x39_bandage",5];
(vestContainer g7) additemcargoGlobal ["x39_morphine",5];
(vestContainer g7) additemcargoGlobal ["x39_epinephrine",5];
(vestContainer g7) additemcargoGlobal ["x39_earplug",1];
(vestContainer g7) addmagazinecargoGlobal ["30Rnd_65x39_caseless_mag_Tracer",6];
(vestContainer g7) addmagazinecargoGlobal ["9Rnd_45ACP_Mag",2];
g7 addItemToVest "MiniGrenade";
g7 addItemToVest "MiniGrenade";
g7 addUniform "U_B_SpecopsUniform_sgg";
clearItemCargoGlobal (uniformContainer g7);
clearMagazineCargoGlobal (uniformContainer g7);
clearWeaponCargoGlobal (uniformContainer g7);
(uniformContainer g7) addmagazinecargoGlobal ["30Rnd_65x39_caseless_mag_Tracer",3];
(uniformContainer g7) addmagazinecargoGlobal ["9Rnd_45ACP_Mag",1];
g7 addWeapon "tf_anprc152";
g7 selectWeapon (primaryWeapon g7);
};

if (!isNil "g3") then {
removeallweapons g3;
removeallassigneditems g3;
removeHeadgear g3;
removeUniform g3;
removeBackpack g3;
removeVest g3;
removeGoggles g3;

g3 addWeapon "ItemMap";
g3 addWeapon "ItemWatch";
g3 addWeapon "ItemCompass";
g3 addWeapon "ItemGPS";
g3 addWeapon "H_HelmetLeaderO_ocamo";
g3 addBackpack "B_TacticalPack_blk";
(backpackContainer g3) addmagazinecargoGlobal ["30Rnd_65x39_caseless_mag_Tracer",1];
g3 addWeapon "arifle_MXC_Black_F";
removeBackpack g3;
g3 addPrimaryWeaponItem "acc_pointer_IR";
g3 addPrimaryWeaponItem "optic_Aco";
g3 addBackpack "B_TacticalPack_blk";
(backpackContainer g3) addmagazinecargoGlobal ["9Rnd_45ACP_Mag",1];
g3 addWeapon "hgun_ACPC2_F";
removeBackpack g3;
g3 addBackpack "B_Carryall_oli";
clearItemCargoGlobal (backpackContainer g3);
clearMagazineCargoGlobal (backpackContainer g3);
clearWeaponCargoGlobal (backpackContainer g3);
(backpackContainer g3) additemcargoGlobal ["x39_medikit",4];
(backpackContainer g3) additemcargoGlobal ["FirstAidKit",5];
(backpackContainer g3) additemcargoGlobal ["x39_bandage",10];
(backpackContainer g3) additemcargoGlobal ["x39_morphine",10];
(backpackContainer g3) additemcargoGlobal ["x39_defibrillator",1];
(backpackContainer g3) additemcargoGlobal ["x39_bloodbag",5];
(backpackContainer g3) additemcargoGlobal ["x39_epinephrine",10];
(backpackContainer g3) additemcargoGlobal ["x39_tourniquet",8];
g3 addVest "V_PlateCarrier1_blk";
clearItemCargoGlobal (vestContainer g3);
clearMagazineCargoGlobal (vestContainer g3);
clearWeaponCargoGlobal (vestContainer g3);
(vestContainer g3) additemcargoGlobal ["FirstAidKit",2];
(vestContainer g3) additemcargoGlobal ["x39_bandage",5];
(vestContainer g3) additemcargoGlobal ["x39_morphine",5];
(vestContainer g3) additemcargoGlobal ["x39_epinephrine",5];
(vestContainer g3) additemcargoGlobal ["x39_earplug",1];
(vestContainer g3) addmagazinecargoGlobal ["30Rnd_65x39_caseless_mag_Tracer",6];
(vestContainer g3) addmagazinecargoGlobal ["9Rnd_45ACP_Mag",2];
g3 addItemToVest "MiniGrenade";
g3 addItemToVest "MiniGrenade";
g3 addUniform "U_B_SpecopsUniform_sgg";
clearItemCargoGlobal (uniformContainer g3);
clearMagazineCargoGlobal (uniformContainer g3);
clearWeaponCargoGlobal (uniformContainer g3);
(uniformContainer g3) addmagazinecargoGlobal ["30Rnd_65x39_caseless_mag_Tracer",3];
(uniformContainer g3) addmagazinecargoGlobal ["9Rnd_45ACP_Mag",1];
g3 addWeapon "tf_anprc152";
g3 selectWeapon (primaryWeapon g3);
};

if (!isNil "g2") then {
removeallweapons g2;
removeallassigneditems g2;
removeHeadgear g2;
removeUniform g2;
removeBackpack g2;
removeVest g2;
removeGoggles g2;

g2 addWeapon "ItemMap";
g2 addWeapon "ItemWatch";
g2 addWeapon "ItemCompass";
g2 addWeapon "ItemGPS";
g2 addWeapon "H_HelmetLeaderO_ocamo";
g2 addBackpack "B_TacticalPack_blk";
(backpackContainer g2) addmagazinecargoGlobal ["100Rnd_65x39_caseless_mag_Tracer",1];
g2 addWeapon "arifle_MX_SW_Black_F";
removeBackpack g2;
g2 addPrimaryWeaponItem "acc_pointer_IR";
g2 addPrimaryWeaponItem "optic_Aco";
g2 addBackpack "B_TacticalPack_blk";
(backpackContainer g2) addmagazinecargoGlobal ["9Rnd_45ACP_Mag",1];
g2 addWeapon "hgun_ACPC2_F";
removeBackpack g2;
g2 addBackpack "B_Carryall_oli";
clearItemCargoGlobal (backpackContainer g2);
clearMagazineCargoGlobal (backpackContainer g2);
clearWeaponCargoGlobal (backpackContainer g2);
(backpackContainer g2) additemcargoGlobal ["x39_bandage",5];
(backpackContainer g2) addmagazinecargoGlobal ["100Rnd_65x39_caseless_mag_Tracer",8];
g2 addVest "V_PlateCarrier1_blk";
clearItemCargoGlobal (vestContainer g2);
clearMagazineCargoGlobal (vestContainer g2);
clearWeaponCargoGlobal (vestContainer g2);
(vestContainer g2) additemcargoGlobal ["FirstAidKit",1];
(vestContainer g2) addmagazinecargoGlobal ["9Rnd_45ACP_Mag",1];
(vestContainer g2) addmagazinecargoGlobal ["100Rnd_65x39_caseless_mag_Tracer",1];
g2 addItemToVest "HandGrenade";
g2 addItemToVest "HandGrenade";
g2 addUniform "U_B_SpecopsUniform_sgg";
clearItemCargoGlobal (uniformContainer g2);
clearMagazineCargoGlobal (uniformContainer g2);
clearWeaponCargoGlobal (uniformContainer g2);
(uniformContainer g2) addmagazinecargoGlobal ["9Rnd_45ACP_Mag",3];
g2 addWeapon "tf_anprc152";
g2 selectWeapon (primaryWeapon g2);
};

if (!isNil "playerCaptive") then {
removeallweapons playerCaptive;
removeallassigneditems playerCaptive;
removeHeadgear playerCaptive;
removeUniform playerCaptive;
removeBackpack playerCaptive;
removeVest playerCaptive;
removeGoggles playerCaptive;

playerCaptive addWeapon "ItemWatch";
playerCaptive addWeapon "ItemCompass";
playerCaptive addUniform "U_B_SpecopsUniform_sgg";
clearItemCargoGlobal (uniformContainer playerCaptive);
clearMagazineCargoGlobal (uniformContainer playerCaptive);
clearWeaponCargoGlobal (uniformContainer playerCaptive);
if (count weapons playerCaptive > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons playerCaptive) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     playerCaptive selectWeapon (_muzzles select 0);
  }
  else {
     playerCaptive selectWeapon _type;
  };
};
};


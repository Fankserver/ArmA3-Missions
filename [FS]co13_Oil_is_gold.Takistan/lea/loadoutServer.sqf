/**
* Generated by LEA for Arma 3
* Version: 2.0.18
* Thu Jun 05 12:01:32 CEST 2014
* Mission file name: [FS]co13_Oil_is_gold.Takistan
* Mission name: [FS]co13_Oil_is_gold.Takistan
* Required mods:
* + XMedSys
* + ArmA 3
* + MK18 Pack
* + Amerikaner
* 
* Call the script: _dummy = [] execvm "lea\loadoutServer.sqf";
* 
*/

/**
* Loadout for crates
*/

  clearweaponcargoGlobal unit_85_178;
  clearmagazinecargoGlobal unit_85_178;
  clearitemcargoGlobal unit_85_178;

  unit_85_178 additemcargoGlobal ["Toolkit",5];

  clearweaponcargoGlobal unit_85_181;
  clearmagazinecargoGlobal unit_85_181;
  clearitemcargoGlobal unit_85_181;

  unit_85_181 additemcargoGlobal ["Toolkit",5];

  clearweaponcargoGlobal unit_85_182;
  clearmagazinecargoGlobal unit_85_182;
  clearitemcargoGlobal unit_85_182;

  unit_85_182 additemcargoGlobal ["Toolkit",5];

  clearweaponcargoGlobal unit_85_183;
  clearmagazinecargoGlobal unit_85_183;
  clearitemcargoGlobal unit_85_183;

  unit_85_183 additemcargoGlobal ["Toolkit",5];

  clearweaponcargoGlobal unit_85_184;
  clearmagazinecargoGlobal unit_85_184;
  clearitemcargoGlobal unit_85_184;

  unit_85_184 addmagazinecargoGlobal ["SmokeShellGreen",20];
  unit_85_184 addmagazinecargoGlobal ["30Rnd_556x45_mag_Tracer",60];
  unit_85_184 addmagazinecargoGlobal ["SmokeShell",20];

  clearweaponcargoGlobal unit_85_185;
  clearmagazinecargoGlobal unit_85_185;
  clearitemcargoGlobal unit_85_185;

  unit_85_185 addmagazinecargoGlobal ["SmokeShellGreen",20];
  unit_85_185 addmagazinecargoGlobal ["30Rnd_556x45_mag_Tracer",60];
  unit_85_185 addmagazinecargoGlobal ["SmokeShell",20];


/**
* Loadout for soldiers units
*/

if (!isNil "unit_0_0") then {
removeallweapons unit_0_0;
removeallassigneditems unit_0_0;
removeHeadgear unit_0_0;
removeUniform unit_0_0;
removeBackpack unit_0_0;
removeVest unit_0_0;
removeGoggles unit_0_0;

unit_0_0 addWeapon "ItemMap";
unit_0_0 addWeapon "ItemWatch";
unit_0_0 addWeapon "ItemCompass";
unit_0_0 addWeapon "ItemGPS";
unit_0_0 addWeapon "TFA_ECH_DESERT";
unit_0_0 addWeapon "Binocular";
unit_0_0 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_0_0) addmagazinecargoGlobal ["30Rnd_556x45_mag_Tracer",1];
unit_0_0 addWeapon "RHARD_MK18PD_F";
removeBackpack unit_0_0;
unit_0_0 addPrimaryWeaponItem "PEQ15_A3_Top";
unit_0_0 addVest "TFA_PlateCarrier_Tan";
clearItemCargoGlobal (vestContainer unit_0_0);
clearMagazineCargoGlobal (vestContainer unit_0_0);
clearWeaponCargoGlobal (vestContainer unit_0_0);
(vestContainer unit_0_0) additemcargoGlobal ["x39_medikit",1];
(vestContainer unit_0_0) additemcargoGlobal ["x39_bandage",5];
(vestContainer unit_0_0) additemcargoGlobal ["x39_morphine",2];
(vestContainer unit_0_0) additemcargoGlobal ["x39_epinephrine",2];
(vestContainer unit_0_0) addmagazinecargoGlobal ["30Rnd_556x45_mag_Tracer",5];
unit_0_0 addItemToVest "SmokeShellGreen";
unit_0_0 addItemToVest "SmokeShellGreen";
unit_0_0 addItemToVest "SmokeShellGreen";
unit_0_0 addItemToVest "SmokeShellGreen";
unit_0_0 addItemToVest "SmokeShellGreen";
unit_0_0 addItemToVest "SmokeShell";
unit_0_0 addItemToVest "SmokeShell";
unit_0_0 addItemToVest "SmokeShell";
unit_0_0 addItemToVest "SmokeShell";
unit_0_0 addItemToVest "SmokeShell";
unit_0_0 addUniform "TFA_tri";
clearItemCargoGlobal (uniformContainer unit_0_0);
clearMagazineCargoGlobal (uniformContainer unit_0_0);
clearWeaponCargoGlobal (uniformContainer unit_0_0);
(uniformContainer unit_0_0) additemcargoGlobal ["x39_medikit",2];
unit_0_0 addWeapon "ItemRadio";
unit_0_0 selectWeapon (primaryWeapon unit_0_0);
};

if (!isNil "unit_1_1") then {
removeallweapons unit_1_1;
removeallassigneditems unit_1_1;
removeHeadgear unit_1_1;
removeUniform unit_1_1;
removeBackpack unit_1_1;
removeVest unit_1_1;
removeGoggles unit_1_1;

unit_1_1 addWeapon "ItemMap";
unit_1_1 addWeapon "ItemWatch";
unit_1_1 addWeapon "ItemCompass";
unit_1_1 addWeapon "ItemGPS";
unit_1_1 addWeapon "TFA_ECH_DESERT";
unit_1_1 addWeapon "Binocular";
unit_1_1 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_1_1) addmagazinecargoGlobal ["30Rnd_556x45_red_mag_Tracer",1];
unit_1_1 addWeapon "RHARD_MK18PD_F";
removeBackpack unit_1_1;
unit_1_1 addPrimaryWeaponItem "PEQ15_A3_Top";
unit_1_1 addPrimaryWeaponItem "optic_Holosight";
unit_1_1 addBackpack "X39_MedicBackPack";
clearItemCargoGlobal (backpackContainer unit_1_1);
clearMagazineCargoGlobal (backpackContainer unit_1_1);
clearWeaponCargoGlobal (backpackContainer unit_1_1);
(backpackContainer unit_1_1) additemcargoGlobal ["x39_medikit",6];
(backpackContainer unit_1_1) additemcargoGlobal ["x39_bandage",15];
(backpackContainer unit_1_1) additemcargoGlobal ["x39_morphine",10];
(backpackContainer unit_1_1) additemcargoGlobal ["x39_bloodbag",5];
(backpackContainer unit_1_1) additemcargoGlobal ["x39_epinephrine",10];
unit_1_1 addVest "TFA_PlateCarrier_Tan";
clearItemCargoGlobal (vestContainer unit_1_1);
clearMagazineCargoGlobal (vestContainer unit_1_1);
clearWeaponCargoGlobal (vestContainer unit_1_1);
(vestContainer unit_1_1) additemcargoGlobal ["x39_medikit",4];
(vestContainer unit_1_1) additemcargoGlobal ["x39_defibrillator",1];
(vestContainer unit_1_1) addmagazinecargoGlobal ["30Rnd_556x45_mag_Tracer",5];
unit_1_1 addItemToVest "SmokeShell";
unit_1_1 addItemToVest "SmokeShell";
unit_1_1 addItemToVest "SmokeShell";
unit_1_1 addUniform "TFA_tri";
clearItemCargoGlobal (uniformContainer unit_1_1);
clearMagazineCargoGlobal (uniformContainer unit_1_1);
clearWeaponCargoGlobal (uniformContainer unit_1_1);
(uniformContainer unit_1_1) additemcargoGlobal ["x39_bandage",10];
unit_1_1 addWeapon "ItemRadio";
unit_1_1 selectWeapon (primaryWeapon unit_1_1);
};

if (!isNil "unit_1_2") then {
removeallweapons unit_1_2;
removeallassigneditems unit_1_2;
removeHeadgear unit_1_2;
removeUniform unit_1_2;
removeBackpack unit_1_2;
removeVest unit_1_2;
removeGoggles unit_1_2;

unit_1_2 addWeapon "ItemMap";
unit_1_2 addWeapon "ItemWatch";
unit_1_2 addWeapon "ItemCompass";
unit_1_2 addWeapon "ItemGPS";
unit_1_2 addWeapon "TFA_ECH_DESERT";
unit_1_2 addWeapon "Binocular";
unit_1_2 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_1_2) addmagazinecargoGlobal ["30Rnd_556x45_red_mag_Tracer",1];
unit_1_2 addWeapon "RHARD_MK18PD_F";
removeBackpack unit_1_2;
unit_1_2 addPrimaryWeaponItem "PEQ15_A3_Top";
unit_1_2 addPrimaryWeaponItem "optic_Holosight";
unit_1_2 addBackpack "X39_MedicBackPack";
clearItemCargoGlobal (backpackContainer unit_1_2);
clearMagazineCargoGlobal (backpackContainer unit_1_2);
clearWeaponCargoGlobal (backpackContainer unit_1_2);
(backpackContainer unit_1_2) additemcargoGlobal ["x39_medikit",6];
(backpackContainer unit_1_2) additemcargoGlobal ["x39_bandage",15];
(backpackContainer unit_1_2) additemcargoGlobal ["x39_morphine",10];
(backpackContainer unit_1_2) additemcargoGlobal ["x39_bloodbag",5];
(backpackContainer unit_1_2) additemcargoGlobal ["x39_epinephrine",10];
unit_1_2 addVest "TFA_PlateCarrier_Tan";
clearItemCargoGlobal (vestContainer unit_1_2);
clearMagazineCargoGlobal (vestContainer unit_1_2);
clearWeaponCargoGlobal (vestContainer unit_1_2);
(vestContainer unit_1_2) additemcargoGlobal ["x39_medikit",4];
(vestContainer unit_1_2) additemcargoGlobal ["x39_defibrillator",1];
(vestContainer unit_1_2) addmagazinecargoGlobal ["30Rnd_556x45_mag_Tracer",5];
unit_1_2 addItemToVest "SmokeShell";
unit_1_2 addItemToVest "SmokeShell";
unit_1_2 addItemToVest "SmokeShell";
unit_1_2 addUniform "TFA_tri";
clearItemCargoGlobal (uniformContainer unit_1_2);
clearMagazineCargoGlobal (uniformContainer unit_1_2);
clearWeaponCargoGlobal (uniformContainer unit_1_2);
(uniformContainer unit_1_2) additemcargoGlobal ["x39_bandage",10];
unit_1_2 addWeapon "ItemRadio";
unit_1_2 selectWeapon (primaryWeapon unit_1_2);
};

if (!isNil "unit_9_22") then {
removeallweapons unit_9_22;
removeallassigneditems unit_9_22;
removeHeadgear unit_9_22;
removeUniform unit_9_22;
removeBackpack unit_9_22;
removeVest unit_9_22;
removeGoggles unit_9_22;

unit_9_22 addWeapon "ItemMap";
unit_9_22 addWeapon "ItemWatch";
unit_9_22 addWeapon "ItemCompass";
unit_9_22 addWeapon "ItemGPS";
unit_9_22 addWeapon "TFA_ECH_DESERT";
unit_9_22 addWeapon "Binocular";
unit_9_22 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_9_22) addmagazinecargoGlobal ["30Rnd_556x45_red_mag_Tracer",1];
unit_9_22 addWeapon "RHARD_MK18PD_F";
removeBackpack unit_9_22;
unit_9_22 addPrimaryWeaponItem "acc_flashlight";
unit_9_22 addPrimaryWeaponItem "optic_Arco";
unit_9_22 addBackpack "TFA_Kitbag_Tan";
clearItemCargoGlobal (backpackContainer unit_9_22);
clearMagazineCargoGlobal (backpackContainer unit_9_22);
clearWeaponCargoGlobal (backpackContainer unit_9_22);
(backpackContainer unit_9_22) addmagazinecargoGlobal ["30Rnd_556x45_mag_Tracer",15];
unit_9_22 addVest "TFA_PlateCarrier_Tan";
clearItemCargoGlobal (vestContainer unit_9_22);
clearMagazineCargoGlobal (vestContainer unit_9_22);
clearWeaponCargoGlobal (vestContainer unit_9_22);
(vestContainer unit_9_22) additemcargoGlobal ["x39_bandage",3];
(vestContainer unit_9_22) additemcargoGlobal ["x39_morphine",1];
(vestContainer unit_9_22) additemcargoGlobal ["x39_epinephrine",3];
(vestContainer unit_9_22) additemcargoGlobal ["x39_tourniquet",1];
(vestContainer unit_9_22) addmagazinecargoGlobal ["30Rnd_556x45_mag_Tracer",5];
unit_9_22 addItemToVest "SmokeShellGreen";
unit_9_22 addItemToVest "SmokeShellGreen";
unit_9_22 addItemToVest "SmokeShellGreen";
unit_9_22 addItemToVest "SmokeShellGreen";
unit_9_22 addItemToVest "SmokeShellGreen";
unit_9_22 addItemToVest "SmokeShell";
unit_9_22 addItemToVest "SmokeShell";
unit_9_22 addItemToVest "SmokeShell";
unit_9_22 addItemToVest "SmokeShell";
unit_9_22 addItemToVest "SmokeShell";
unit_9_22 addItemToVest "SmokeShellRed";
unit_9_22 addItemToVest "SmokeShellRed";
unit_9_22 addUniform "TFA_tri";
clearItemCargoGlobal (uniformContainer unit_9_22);
clearMagazineCargoGlobal (uniformContainer unit_9_22);
clearWeaponCargoGlobal (uniformContainer unit_9_22);
(uniformContainer unit_9_22) additemcargoGlobal ["x39_medikit",2];
unit_9_22 addWeapon "ItemRadio";
unit_9_22 selectWeapon (primaryWeapon unit_9_22);
};

if (!isNil "unit_9_23") then {
removeallweapons unit_9_23;
removeallassigneditems unit_9_23;
removeHeadgear unit_9_23;
removeUniform unit_9_23;
removeBackpack unit_9_23;
removeVest unit_9_23;
removeGoggles unit_9_23;

unit_9_23 addWeapon "ItemMap";
unit_9_23 addWeapon "ItemWatch";
unit_9_23 addWeapon "ItemCompass";
unit_9_23 addWeapon "ItemGPS";
unit_9_23 addWeapon "TFA_ECH_DESERT";
unit_9_23 addWeapon "Binocular";
unit_9_23 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_9_23) addmagazinecargoGlobal ["30Rnd_556x45_red_mag_Tracer",1];
unit_9_23 addWeapon "RHARD_MK18PD_F";
removeBackpack unit_9_23;
unit_9_23 addPrimaryWeaponItem "acc_flashlight";
unit_9_23 addPrimaryWeaponItem "optic_Arco";
unit_9_23 addBackpack "TFA_Kitbag_Tan";
clearItemCargoGlobal (backpackContainer unit_9_23);
clearMagazineCargoGlobal (backpackContainer unit_9_23);
clearWeaponCargoGlobal (backpackContainer unit_9_23);
(backpackContainer unit_9_23) addmagazinecargoGlobal ["30Rnd_556x45_mag_Tracer",15];
unit_9_23 addVest "TFA_PlateCarrier_Tan";
clearItemCargoGlobal (vestContainer unit_9_23);
clearMagazineCargoGlobal (vestContainer unit_9_23);
clearWeaponCargoGlobal (vestContainer unit_9_23);
(vestContainer unit_9_23) additemcargoGlobal ["x39_bandage",3];
(vestContainer unit_9_23) additemcargoGlobal ["x39_morphine",1];
(vestContainer unit_9_23) additemcargoGlobal ["x39_epinephrine",3];
(vestContainer unit_9_23) additemcargoGlobal ["x39_tourniquet",1];
(vestContainer unit_9_23) addmagazinecargoGlobal ["30Rnd_556x45_mag_Tracer",5];
unit_9_23 addItemToVest "SmokeShellGreen";
unit_9_23 addItemToVest "SmokeShellGreen";
unit_9_23 addItemToVest "SmokeShellGreen";
unit_9_23 addItemToVest "SmokeShellGreen";
unit_9_23 addItemToVest "SmokeShellGreen";
unit_9_23 addItemToVest "SmokeShell";
unit_9_23 addItemToVest "SmokeShell";
unit_9_23 addItemToVest "SmokeShell";
unit_9_23 addItemToVest "SmokeShell";
unit_9_23 addItemToVest "SmokeShell";
unit_9_23 addItemToVest "SmokeShellRed";
unit_9_23 addItemToVest "SmokeShellRed";
unit_9_23 addUniform "TFA_tri";
clearItemCargoGlobal (uniformContainer unit_9_23);
clearMagazineCargoGlobal (uniformContainer unit_9_23);
clearWeaponCargoGlobal (uniformContainer unit_9_23);
(uniformContainer unit_9_23) additemcargoGlobal ["x39_medikit",2];
unit_9_23 addWeapon "ItemRadio";
unit_9_23 selectWeapon (primaryWeapon unit_9_23);
};

if (!isNil "unit_9_24") then {
removeallweapons unit_9_24;
removeallassigneditems unit_9_24;
removeHeadgear unit_9_24;
removeUniform unit_9_24;
removeBackpack unit_9_24;
removeVest unit_9_24;
removeGoggles unit_9_24;

unit_9_24 addWeapon "ItemMap";
unit_9_24 addWeapon "ItemWatch";
unit_9_24 addWeapon "ItemCompass";
unit_9_24 addWeapon "ItemGPS";
unit_9_24 addWeapon "TFA_ECH_DESERT";
unit_9_24 addWeapon "Binocular";
unit_9_24 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_9_24) addmagazinecargoGlobal ["30Rnd_556x45_red_mag_Tracer",1];
unit_9_24 addWeapon "RHARD_MK18PD_F";
removeBackpack unit_9_24;
unit_9_24 addPrimaryWeaponItem "acc_flashlight";
unit_9_24 addPrimaryWeaponItem "optic_Arco";
unit_9_24 addBackpack "TFA_Kitbag_Tan";
clearItemCargoGlobal (backpackContainer unit_9_24);
clearMagazineCargoGlobal (backpackContainer unit_9_24);
clearWeaponCargoGlobal (backpackContainer unit_9_24);
(backpackContainer unit_9_24) addmagazinecargoGlobal ["30Rnd_556x45_mag_Tracer",15];
unit_9_24 addVest "TFA_PlateCarrier_Tan";
clearItemCargoGlobal (vestContainer unit_9_24);
clearMagazineCargoGlobal (vestContainer unit_9_24);
clearWeaponCargoGlobal (vestContainer unit_9_24);
(vestContainer unit_9_24) additemcargoGlobal ["x39_bandage",3];
(vestContainer unit_9_24) additemcargoGlobal ["x39_morphine",1];
(vestContainer unit_9_24) additemcargoGlobal ["x39_epinephrine",3];
(vestContainer unit_9_24) additemcargoGlobal ["x39_tourniquet",1];
(vestContainer unit_9_24) addmagazinecargoGlobal ["30Rnd_556x45_mag_Tracer",5];
unit_9_24 addItemToVest "SmokeShellGreen";
unit_9_24 addItemToVest "SmokeShellGreen";
unit_9_24 addItemToVest "SmokeShellGreen";
unit_9_24 addItemToVest "SmokeShellGreen";
unit_9_24 addItemToVest "SmokeShellGreen";
unit_9_24 addItemToVest "SmokeShell";
unit_9_24 addItemToVest "SmokeShell";
unit_9_24 addItemToVest "SmokeShell";
unit_9_24 addItemToVest "SmokeShell";
unit_9_24 addItemToVest "SmokeShell";
unit_9_24 addItemToVest "SmokeShellRed";
unit_9_24 addItemToVest "SmokeShellRed";
unit_9_24 addUniform "TFA_tri";
clearItemCargoGlobal (uniformContainer unit_9_24);
clearMagazineCargoGlobal (uniformContainer unit_9_24);
clearWeaponCargoGlobal (uniformContainer unit_9_24);
(uniformContainer unit_9_24) additemcargoGlobal ["x39_medikit",2];
unit_9_24 addWeapon "ItemRadio";
unit_9_24 selectWeapon (primaryWeapon unit_9_24);
};

if (!isNil "unit_9_25") then {
removeallweapons unit_9_25;
removeallassigneditems unit_9_25;
removeHeadgear unit_9_25;
removeUniform unit_9_25;
removeBackpack unit_9_25;
removeVest unit_9_25;
removeGoggles unit_9_25;

unit_9_25 addWeapon "ItemMap";
unit_9_25 addWeapon "ItemWatch";
unit_9_25 addWeapon "ItemCompass";
unit_9_25 addWeapon "ItemGPS";
unit_9_25 addWeapon "TFA_ECH_DESERT";
unit_9_25 addWeapon "Binocular";
unit_9_25 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_9_25) addmagazinecargoGlobal ["30Rnd_556x45_red_mag_Tracer",1];
unit_9_25 addWeapon "RHARD_MK18PD_F";
removeBackpack unit_9_25;
unit_9_25 addPrimaryWeaponItem "acc_flashlight";
unit_9_25 addPrimaryWeaponItem "optic_Arco";
unit_9_25 addBackpack "TFA_Kitbag_Tan";
clearItemCargoGlobal (backpackContainer unit_9_25);
clearMagazineCargoGlobal (backpackContainer unit_9_25);
clearWeaponCargoGlobal (backpackContainer unit_9_25);
(backpackContainer unit_9_25) addmagazinecargoGlobal ["30Rnd_556x45_mag_Tracer",15];
unit_9_25 addVest "TFA_PlateCarrier_Tan";
clearItemCargoGlobal (vestContainer unit_9_25);
clearMagazineCargoGlobal (vestContainer unit_9_25);
clearWeaponCargoGlobal (vestContainer unit_9_25);
(vestContainer unit_9_25) additemcargoGlobal ["x39_bandage",3];
(vestContainer unit_9_25) additemcargoGlobal ["x39_morphine",1];
(vestContainer unit_9_25) additemcargoGlobal ["x39_epinephrine",3];
(vestContainer unit_9_25) additemcargoGlobal ["x39_tourniquet",1];
(vestContainer unit_9_25) addmagazinecargoGlobal ["30Rnd_556x45_mag_Tracer",5];
unit_9_25 addItemToVest "SmokeShellGreen";
unit_9_25 addItemToVest "SmokeShellGreen";
unit_9_25 addItemToVest "SmokeShellGreen";
unit_9_25 addItemToVest "SmokeShellGreen";
unit_9_25 addItemToVest "SmokeShellGreen";
unit_9_25 addItemToVest "SmokeShell";
unit_9_25 addItemToVest "SmokeShell";
unit_9_25 addItemToVest "SmokeShell";
unit_9_25 addItemToVest "SmokeShell";
unit_9_25 addItemToVest "SmokeShell";
unit_9_25 addItemToVest "SmokeShellRed";
unit_9_25 addItemToVest "SmokeShellRed";
unit_9_25 addUniform "TFA_tri";
clearItemCargoGlobal (uniformContainer unit_9_25);
clearMagazineCargoGlobal (uniformContainer unit_9_25);
clearWeaponCargoGlobal (uniformContainer unit_9_25);
(uniformContainer unit_9_25) additemcargoGlobal ["x39_medikit",2];
unit_9_25 addWeapon "ItemRadio";
unit_9_25 selectWeapon (primaryWeapon unit_9_25);
};

if (!isNil "taki_1") then {
removeallweapons taki_1;
removeallassigneditems taki_1;
removeHeadgear taki_1;
removeUniform taki_1;
removeBackpack taki_1;
removeVest taki_1;
removeGoggles taki_1;

if (count weapons taki_1 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons taki_1) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     taki_1 selectWeapon (_muzzles select 0);
  }
  else {
     taki_1 selectWeapon _type;
  };
};
};

if (!isNil "unit_60_109") then {
removeallweapons unit_60_109;
removeallassigneditems unit_60_109;
removeHeadgear unit_60_109;
removeUniform unit_60_109;
removeBackpack unit_60_109;
removeVest unit_60_109;
removeGoggles unit_60_109;

unit_60_109 addWeapon "ItemMap";
unit_60_109 addWeapon "ItemWatch";
unit_60_109 addWeapon "ItemCompass";
unit_60_109 addWeapon "ItemGPS";
unit_60_109 addWeapon "TFA_ECH_DESERT";
unit_60_109 addWeapon "Binocular";
unit_60_109 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_60_109) addmagazinecargoGlobal ["30Rnd_556x45_red_mag_Tracer",1];
unit_60_109 addWeapon "RHARD_MK18PD_F";
removeBackpack unit_60_109;
unit_60_109 addPrimaryWeaponItem "acc_flashlight";
unit_60_109 addPrimaryWeaponItem "optic_Arco";
unit_60_109 addBackpack "TFA_Kitbag_Tan";
clearItemCargoGlobal (backpackContainer unit_60_109);
clearMagazineCargoGlobal (backpackContainer unit_60_109);
clearWeaponCargoGlobal (backpackContainer unit_60_109);
(backpackContainer unit_60_109) addmagazinecargoGlobal ["30Rnd_556x45_mag_Tracer",15];
unit_60_109 addVest "TFA_PlateCarrier_Tan";
clearItemCargoGlobal (vestContainer unit_60_109);
clearMagazineCargoGlobal (vestContainer unit_60_109);
clearWeaponCargoGlobal (vestContainer unit_60_109);
(vestContainer unit_60_109) additemcargoGlobal ["x39_bandage",3];
(vestContainer unit_60_109) additemcargoGlobal ["x39_morphine",1];
(vestContainer unit_60_109) additemcargoGlobal ["x39_epinephrine",3];
(vestContainer unit_60_109) additemcargoGlobal ["x39_tourniquet",1];
(vestContainer unit_60_109) addmagazinecargoGlobal ["30Rnd_556x45_mag_Tracer",5];
unit_60_109 addItemToVest "SmokeShellGreen";
unit_60_109 addItemToVest "SmokeShellGreen";
unit_60_109 addItemToVest "SmokeShellGreen";
unit_60_109 addItemToVest "SmokeShellGreen";
unit_60_109 addItemToVest "SmokeShellGreen";
unit_60_109 addItemToVest "SmokeShell";
unit_60_109 addItemToVest "SmokeShell";
unit_60_109 addItemToVest "SmokeShell";
unit_60_109 addItemToVest "SmokeShell";
unit_60_109 addItemToVest "SmokeShell";
unit_60_109 addItemToVest "SmokeShellRed";
unit_60_109 addItemToVest "SmokeShellRed";
unit_60_109 addUniform "TFA_tri";
clearItemCargoGlobal (uniformContainer unit_60_109);
clearMagazineCargoGlobal (uniformContainer unit_60_109);
clearWeaponCargoGlobal (uniformContainer unit_60_109);
(uniformContainer unit_60_109) additemcargoGlobal ["x39_medikit",2];
unit_60_109 addWeapon "ItemRadio";
unit_60_109 selectWeapon (primaryWeapon unit_60_109);
};

if (!isNil "unit_60_110") then {
removeallweapons unit_60_110;
removeallassigneditems unit_60_110;
removeHeadgear unit_60_110;
removeUniform unit_60_110;
removeBackpack unit_60_110;
removeVest unit_60_110;
removeGoggles unit_60_110;

unit_60_110 addWeapon "ItemMap";
unit_60_110 addWeapon "ItemWatch";
unit_60_110 addWeapon "ItemCompass";
unit_60_110 addWeapon "ItemGPS";
unit_60_110 addWeapon "TFA_ECH_DESERT";
unit_60_110 addWeapon "Binocular";
unit_60_110 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_60_110) addmagazinecargoGlobal ["30Rnd_556x45_red_mag_Tracer",1];
unit_60_110 addWeapon "RHARD_MK18PD_F";
removeBackpack unit_60_110;
unit_60_110 addPrimaryWeaponItem "acc_flashlight";
unit_60_110 addPrimaryWeaponItem "optic_Arco";
unit_60_110 addBackpack "TFA_Kitbag_Tan";
clearItemCargoGlobal (backpackContainer unit_60_110);
clearMagazineCargoGlobal (backpackContainer unit_60_110);
clearWeaponCargoGlobal (backpackContainer unit_60_110);
(backpackContainer unit_60_110) addmagazinecargoGlobal ["30Rnd_556x45_mag_Tracer",15];
unit_60_110 addVest "TFA_PlateCarrier_Tan";
clearItemCargoGlobal (vestContainer unit_60_110);
clearMagazineCargoGlobal (vestContainer unit_60_110);
clearWeaponCargoGlobal (vestContainer unit_60_110);
(vestContainer unit_60_110) additemcargoGlobal ["x39_bandage",3];
(vestContainer unit_60_110) additemcargoGlobal ["x39_morphine",1];
(vestContainer unit_60_110) additemcargoGlobal ["x39_epinephrine",3];
(vestContainer unit_60_110) additemcargoGlobal ["x39_tourniquet",1];
(vestContainer unit_60_110) addmagazinecargoGlobal ["30Rnd_556x45_mag_Tracer",5];
unit_60_110 addItemToVest "SmokeShellGreen";
unit_60_110 addItemToVest "SmokeShellGreen";
unit_60_110 addItemToVest "SmokeShellGreen";
unit_60_110 addItemToVest "SmokeShellGreen";
unit_60_110 addItemToVest "SmokeShellGreen";
unit_60_110 addItemToVest "SmokeShell";
unit_60_110 addItemToVest "SmokeShell";
unit_60_110 addItemToVest "SmokeShell";
unit_60_110 addItemToVest "SmokeShell";
unit_60_110 addItemToVest "SmokeShell";
unit_60_110 addItemToVest "SmokeShellRed";
unit_60_110 addItemToVest "SmokeShellRed";
unit_60_110 addUniform "TFA_tri";
clearItemCargoGlobal (uniformContainer unit_60_110);
clearMagazineCargoGlobal (uniformContainer unit_60_110);
clearWeaponCargoGlobal (uniformContainer unit_60_110);
(uniformContainer unit_60_110) additemcargoGlobal ["x39_medikit",2];
unit_60_110 addWeapon "ItemRadio";
unit_60_110 selectWeapon (primaryWeapon unit_60_110);
};

if (!isNil "unit_60_111") then {
removeallweapons unit_60_111;
removeallassigneditems unit_60_111;
removeHeadgear unit_60_111;
removeUniform unit_60_111;
removeBackpack unit_60_111;
removeVest unit_60_111;
removeGoggles unit_60_111;

unit_60_111 addWeapon "ItemMap";
unit_60_111 addWeapon "ItemWatch";
unit_60_111 addWeapon "ItemCompass";
unit_60_111 addWeapon "ItemGPS";
unit_60_111 addWeapon "TFA_ECH_DESERT";
unit_60_111 addWeapon "Binocular";
unit_60_111 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_60_111) addmagazinecargoGlobal ["30Rnd_556x45_red_mag_Tracer",1];
unit_60_111 addWeapon "RHARD_MK18PD_F";
removeBackpack unit_60_111;
unit_60_111 addPrimaryWeaponItem "acc_flashlight";
unit_60_111 addPrimaryWeaponItem "optic_Arco";
unit_60_111 addBackpack "TFA_Kitbag_Tan";
clearItemCargoGlobal (backpackContainer unit_60_111);
clearMagazineCargoGlobal (backpackContainer unit_60_111);
clearWeaponCargoGlobal (backpackContainer unit_60_111);
(backpackContainer unit_60_111) addmagazinecargoGlobal ["30Rnd_556x45_mag_Tracer",15];
unit_60_111 addVest "TFA_PlateCarrier_Tan";
clearItemCargoGlobal (vestContainer unit_60_111);
clearMagazineCargoGlobal (vestContainer unit_60_111);
clearWeaponCargoGlobal (vestContainer unit_60_111);
(vestContainer unit_60_111) additemcargoGlobal ["x39_bandage",3];
(vestContainer unit_60_111) additemcargoGlobal ["x39_morphine",1];
(vestContainer unit_60_111) additemcargoGlobal ["x39_epinephrine",3];
(vestContainer unit_60_111) additemcargoGlobal ["x39_tourniquet",1];
(vestContainer unit_60_111) addmagazinecargoGlobal ["30Rnd_556x45_mag_Tracer",5];
unit_60_111 addItemToVest "SmokeShellGreen";
unit_60_111 addItemToVest "SmokeShellGreen";
unit_60_111 addItemToVest "SmokeShellGreen";
unit_60_111 addItemToVest "SmokeShellGreen";
unit_60_111 addItemToVest "SmokeShellGreen";
unit_60_111 addItemToVest "SmokeShell";
unit_60_111 addItemToVest "SmokeShell";
unit_60_111 addItemToVest "SmokeShell";
unit_60_111 addItemToVest "SmokeShell";
unit_60_111 addItemToVest "SmokeShell";
unit_60_111 addItemToVest "SmokeShellRed";
unit_60_111 addItemToVest "SmokeShellRed";
unit_60_111 addUniform "TFA_tri";
clearItemCargoGlobal (uniformContainer unit_60_111);
clearMagazineCargoGlobal (uniformContainer unit_60_111);
clearWeaponCargoGlobal (uniformContainer unit_60_111);
(uniformContainer unit_60_111) additemcargoGlobal ["x39_medikit",2];
unit_60_111 addWeapon "ItemRadio";
unit_60_111 selectWeapon (primaryWeapon unit_60_111);
};

if (!isNil "unit_60_112") then {
removeallweapons unit_60_112;
removeallassigneditems unit_60_112;
removeHeadgear unit_60_112;
removeUniform unit_60_112;
removeBackpack unit_60_112;
removeVest unit_60_112;
removeGoggles unit_60_112;

unit_60_112 addWeapon "ItemMap";
unit_60_112 addWeapon "ItemWatch";
unit_60_112 addWeapon "ItemCompass";
unit_60_112 addWeapon "ItemGPS";
unit_60_112 addWeapon "TFA_ECH_DESERT";
unit_60_112 addWeapon "Binocular";
unit_60_112 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_60_112) addmagazinecargoGlobal ["30Rnd_556x45_red_mag_Tracer",1];
unit_60_112 addWeapon "RHARD_MK18PD_F";
removeBackpack unit_60_112;
unit_60_112 addPrimaryWeaponItem "acc_flashlight";
unit_60_112 addPrimaryWeaponItem "optic_Arco";
unit_60_112 addBackpack "TFA_Kitbag_Tan";
clearItemCargoGlobal (backpackContainer unit_60_112);
clearMagazineCargoGlobal (backpackContainer unit_60_112);
clearWeaponCargoGlobal (backpackContainer unit_60_112);
(backpackContainer unit_60_112) addmagazinecargoGlobal ["30Rnd_556x45_mag_Tracer",15];
unit_60_112 addVest "TFA_PlateCarrier_Tan";
clearItemCargoGlobal (vestContainer unit_60_112);
clearMagazineCargoGlobal (vestContainer unit_60_112);
clearWeaponCargoGlobal (vestContainer unit_60_112);
(vestContainer unit_60_112) additemcargoGlobal ["x39_bandage",3];
(vestContainer unit_60_112) additemcargoGlobal ["x39_morphine",1];
(vestContainer unit_60_112) additemcargoGlobal ["x39_epinephrine",3];
(vestContainer unit_60_112) additemcargoGlobal ["x39_tourniquet",1];
(vestContainer unit_60_112) addmagazinecargoGlobal ["30Rnd_556x45_mag_Tracer",5];
unit_60_112 addItemToVest "SmokeShellGreen";
unit_60_112 addItemToVest "SmokeShellGreen";
unit_60_112 addItemToVest "SmokeShellGreen";
unit_60_112 addItemToVest "SmokeShellGreen";
unit_60_112 addItemToVest "SmokeShellGreen";
unit_60_112 addItemToVest "SmokeShell";
unit_60_112 addItemToVest "SmokeShell";
unit_60_112 addItemToVest "SmokeShell";
unit_60_112 addItemToVest "SmokeShell";
unit_60_112 addItemToVest "SmokeShell";
unit_60_112 addItemToVest "SmokeShellRed";
unit_60_112 addItemToVest "SmokeShellRed";
unit_60_112 addUniform "TFA_tri";
clearItemCargoGlobal (uniformContainer unit_60_112);
clearMagazineCargoGlobal (uniformContainer unit_60_112);
clearWeaponCargoGlobal (uniformContainer unit_60_112);
(uniformContainer unit_60_112) additemcargoGlobal ["x39_medikit",2];
unit_60_112 addWeapon "ItemRadio";
unit_60_112 selectWeapon (primaryWeapon unit_60_112);
};

if (!isNil "unit_67_134") then {
removeallweapons unit_67_134;
removeallassigneditems unit_67_134;
removeHeadgear unit_67_134;
removeUniform unit_67_134;
removeBackpack unit_67_134;
removeVest unit_67_134;
removeGoggles unit_67_134;

if (count weapons unit_67_134 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons unit_67_134) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     unit_67_134 selectWeapon (_muzzles select 0);
  }
  else {
     unit_67_134 selectWeapon _type;
  };
};
};

if (!isNil "unit_67_135") then {
removeallweapons unit_67_135;
removeallassigneditems unit_67_135;
removeHeadgear unit_67_135;
removeUniform unit_67_135;
removeBackpack unit_67_135;
removeVest unit_67_135;
removeGoggles unit_67_135;

if (count weapons unit_67_135 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons unit_67_135) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     unit_67_135 selectWeapon (_muzzles select 0);
  }
  else {
     unit_67_135 selectWeapon _type;
  };
};
};

if (!isNil "unit_67_136") then {
removeallweapons unit_67_136;
removeallassigneditems unit_67_136;
removeHeadgear unit_67_136;
removeUniform unit_67_136;
removeBackpack unit_67_136;
removeVest unit_67_136;
removeGoggles unit_67_136;

if (count weapons unit_67_136 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons unit_67_136) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     unit_67_136 selectWeapon (_muzzles select 0);
  }
  else {
     unit_67_136 selectWeapon _type;
  };
};
};

if (!isNil "unit_69_141") then {
removeallweapons unit_69_141;
removeallassigneditems unit_69_141;
removeHeadgear unit_69_141;
removeUniform unit_69_141;
removeBackpack unit_69_141;
removeVest unit_69_141;
removeGoggles unit_69_141;

if (count weapons unit_69_141 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons unit_69_141) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     unit_69_141 selectWeapon (_muzzles select 0);
  }
  else {
     unit_69_141 selectWeapon _type;
  };
};
};

if (!isNil "unit_70_142") then {
removeallweapons unit_70_142;
removeallassigneditems unit_70_142;
removeHeadgear unit_70_142;
removeUniform unit_70_142;
removeBackpack unit_70_142;
removeVest unit_70_142;
removeGoggles unit_70_142;

if (count weapons unit_70_142 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons unit_70_142) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     unit_70_142 selectWeapon (_muzzles select 0);
  }
  else {
     unit_70_142 selectWeapon _type;
  };
};
};

if (!isNil "unit_71_143") then {
removeallweapons unit_71_143;
removeallassigneditems unit_71_143;
removeHeadgear unit_71_143;
removeUniform unit_71_143;
removeBackpack unit_71_143;
removeVest unit_71_143;
removeGoggles unit_71_143;

if (count weapons unit_71_143 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons unit_71_143) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     unit_71_143 selectWeapon (_muzzles select 0);
  }
  else {
     unit_71_143 selectWeapon _type;
  };
};
};

if (!isNil "unit_71_144") then {
removeallweapons unit_71_144;
removeallassigneditems unit_71_144;
removeHeadgear unit_71_144;
removeUniform unit_71_144;
removeBackpack unit_71_144;
removeVest unit_71_144;
removeGoggles unit_71_144;

if (count weapons unit_71_144 > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons unit_71_144) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     unit_71_144 selectWeapon (_muzzles select 0);
  }
  else {
     unit_71_144 selectWeapon _type;
  };
};
};

if (!isNil "unit_86_180") then {
removeallweapons unit_86_180;
removeallassigneditems unit_86_180;
removeHeadgear unit_86_180;
removeUniform unit_86_180;
removeBackpack unit_86_180;
removeVest unit_86_180;
removeGoggles unit_86_180;

unit_86_180 addWeapon "ItemMap";
unit_86_180 addWeapon "ItemWatch";
unit_86_180 addWeapon "ItemCompass";
unit_86_180 addWeapon "ItemGPS";
unit_86_180 addWeapon "TFA_ECH_DESERT";
unit_86_180 addWeapon "Binocular";
unit_86_180 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_86_180) addmagazinecargoGlobal ["30Rnd_556x45_red_mag_Tracer",1];
unit_86_180 addWeapon "RHARD_MK18PD_F";
removeBackpack unit_86_180;
unit_86_180 addPrimaryWeaponItem "acc_flashlight";
unit_86_180 addPrimaryWeaponItem "optic_Arco";
unit_86_180 addVest "TFA_PlateCarrier_NWU2";
clearItemCargoGlobal (vestContainer unit_86_180);
clearMagazineCargoGlobal (vestContainer unit_86_180);
clearWeaponCargoGlobal (vestContainer unit_86_180);
(vestContainer unit_86_180) additemcargoGlobal ["x39_bandage",3];
(vestContainer unit_86_180) additemcargoGlobal ["x39_morphine",1];
(vestContainer unit_86_180) additemcargoGlobal ["MineDetector",1];
(vestContainer unit_86_180) additemcargoGlobal ["x39_epinephrine",3];
(vestContainer unit_86_180) additemcargoGlobal ["x39_tourniquet",1];
(vestContainer unit_86_180) addmagazinecargoGlobal ["30Rnd_556x45_mag_Tracer",5];
unit_86_180 addItemToVest "SmokeShellGreen";
unit_86_180 addItemToVest "SmokeShellGreen";
unit_86_180 addItemToVest "SmokeShellGreen";
unit_86_180 addItemToVest "SmokeShellGreen";
unit_86_180 addItemToVest "SmokeShellGreen";
unit_86_180 addItemToVest "SmokeShell";
unit_86_180 addItemToVest "SmokeShell";
unit_86_180 addItemToVest "SmokeShell";
unit_86_180 addItemToVest "SmokeShell";
unit_86_180 addItemToVest "SmokeShell";
unit_86_180 addItemToVest "SmokeShellRed";
unit_86_180 addItemToVest "SmokeShellRed";
unit_86_180 addUniform "TFA_tri";
clearItemCargoGlobal (uniformContainer unit_86_180);
clearMagazineCargoGlobal (uniformContainer unit_86_180);
clearWeaponCargoGlobal (uniformContainer unit_86_180);
(uniformContainer unit_86_180) additemcargoGlobal ["x39_medikit",2];
unit_86_180 addWeapon "ItemRadio";
unit_86_180 selectWeapon (primaryWeapon unit_86_180);
};

if (!isNil "unit_86_181") then {
removeallweapons unit_86_181;
removeallassigneditems unit_86_181;
removeHeadgear unit_86_181;
removeUniform unit_86_181;
removeBackpack unit_86_181;
removeVest unit_86_181;
removeGoggles unit_86_181;

unit_86_181 addWeapon "ItemMap";
unit_86_181 addWeapon "ItemWatch";
unit_86_181 addWeapon "ItemCompass";
unit_86_181 addWeapon "ItemGPS";
unit_86_181 addWeapon "TFA_ECH_DESERT";
unit_86_181 addWeapon "Binocular";
unit_86_181 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_86_181) addmagazinecargoGlobal ["30Rnd_556x45_red_mag_Tracer",1];
unit_86_181 addWeapon "RHARD_MK18PD_F";
removeBackpack unit_86_181;
unit_86_181 addPrimaryWeaponItem "acc_flashlight";
unit_86_181 addPrimaryWeaponItem "optic_Arco";
unit_86_181 addVest "TFA_PlateCarrier_NWU2";
clearItemCargoGlobal (vestContainer unit_86_181);
clearMagazineCargoGlobal (vestContainer unit_86_181);
clearWeaponCargoGlobal (vestContainer unit_86_181);
(vestContainer unit_86_181) additemcargoGlobal ["x39_bandage",3];
(vestContainer unit_86_181) additemcargoGlobal ["x39_morphine",1];
(vestContainer unit_86_181) additemcargoGlobal ["MineDetector",1];
(vestContainer unit_86_181) additemcargoGlobal ["x39_epinephrine",3];
(vestContainer unit_86_181) additemcargoGlobal ["x39_tourniquet",1];
(vestContainer unit_86_181) addmagazinecargoGlobal ["30Rnd_556x45_mag_Tracer",5];
unit_86_181 addItemToVest "SmokeShellGreen";
unit_86_181 addItemToVest "SmokeShellGreen";
unit_86_181 addItemToVest "SmokeShellGreen";
unit_86_181 addItemToVest "SmokeShellGreen";
unit_86_181 addItemToVest "SmokeShellGreen";
unit_86_181 addItemToVest "SmokeShell";
unit_86_181 addItemToVest "SmokeShell";
unit_86_181 addItemToVest "SmokeShell";
unit_86_181 addItemToVest "SmokeShell";
unit_86_181 addItemToVest "SmokeShell";
unit_86_181 addItemToVest "SmokeShellRed";
unit_86_181 addItemToVest "SmokeShellRed";
unit_86_181 addUniform "TFA_tri";
clearItemCargoGlobal (uniformContainer unit_86_181);
clearMagazineCargoGlobal (uniformContainer unit_86_181);
clearWeaponCargoGlobal (uniformContainer unit_86_181);
(uniformContainer unit_86_181) additemcargoGlobal ["x39_medikit",2];
unit_86_181 addWeapon "ItemRadio";
unit_86_181 selectWeapon (primaryWeapon unit_86_181);
};


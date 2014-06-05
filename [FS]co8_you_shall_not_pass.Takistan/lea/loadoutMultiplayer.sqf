/**
* Generated by LEA for Arma 3
* Version: 2.0.18
* Thu Jun 05 11:31:41 CEST 2014
* Mission file name: [FS]co8_you_shall_not_pass.Takistan
* Mission name: [FS]co8_you_shall_not_pass.Takistan
* Required mods:
* + HLC AK Pack
* + XMedSys
* + ArmA 3
* + CAF Aggressors
* + TFAR
* + Russians
* 
* Call the script: _dummy = [] execvm "lea\loadoutMultiplayer.sqf";
* 
*/

/**
* Loadout for crates
*/

//Empty, nothing to do. unit Car_zwei
//Empty, nothing to do. unit Car_drei
//Empty, nothing to do. unit Car_eins

/**
* Loadout for soldiers units
*/

if (!isNil "Fuehrer") then {
	if (player == Fuehrer) exitwith {
removeallweapons Fuehrer;
removeallassigneditems Fuehrer;
removeHeadgear Fuehrer;
removeUniform Fuehrer;
removeBackpack Fuehrer;
removeVest Fuehrer;
removeGoggles Fuehrer;

Fuehrer addWeapon "ItemMap";
Fuehrer addWeapon "ItemWatch";
Fuehrer addWeapon "ItemCompass";
Fuehrer addWeapon "ItemGPS";
Fuehrer addWeapon "H_caf_ag_turban";
Fuehrer addWeapon "Binocular";
Fuehrer addBackpack "B_TacticalPack_blk";
(backpackContainer Fuehrer) addmagazinecargoGlobal ["hlc_30Rnd_762x39_b_ak",1];
Fuehrer addWeapon "hlc_rifle_akm";
removeBackpack Fuehrer;
Fuehrer addPrimaryWeaponItem "hlc_optic_kobra";
Fuehrer addVest "V_BandollierB_oli";
clearItemCargoGlobal (vestContainer Fuehrer);
clearMagazineCargoGlobal (vestContainer Fuehrer);
clearWeaponCargoGlobal (vestContainer Fuehrer);
(vestContainer Fuehrer) additemcargoGlobal ["x39_medikit",2];
(vestContainer Fuehrer) additemcargoGlobal ["x39_bandage",6];
(vestContainer Fuehrer) additemcargoGlobal ["x39_morphine",2];
(vestContainer Fuehrer) additemcargoGlobal ["x39_bloodbag",1];
(vestContainer Fuehrer) additemcargoGlobal ["x39_epinephrine",2];
(vestContainer Fuehrer) addmagazinecargoGlobal ["hlc_30Rnd_762x39_t_ak",3];
Fuehrer addUniform "U_CAF_AG_ME_ROBES_03b";
clearItemCargoGlobal (uniformContainer Fuehrer);
clearMagazineCargoGlobal (uniformContainer Fuehrer);
clearWeaponCargoGlobal (uniformContainer Fuehrer);
(uniformContainer Fuehrer) addmagazinecargoGlobal ["hlc_30Rnd_762x39_t_ak",5];
Fuehrer addWeapon "tf_rf7800str";
Fuehrer selectWeapon (primaryWeapon Fuehrer);
	};
};

if (!isNil "RPG") then {
	if (player == RPG) exitwith {
removeallweapons RPG;
removeallassigneditems RPG;
removeHeadgear RPG;
removeUniform RPG;
removeBackpack RPG;
removeVest RPG;
removeGoggles RPG;

RPG addWeapon "ItemMap";
RPG addWeapon "ItemWatch";
RPG addWeapon "ItemCompass";
RPG addWeapon "H_caf_ag_wrap";
RPG addWeapon "Binocular";
RPG addBackpack "B_TacticalPack_blk";
(backpackContainer RPG) addmagazinecargoGlobal ["hlc_30Rnd_762x39_t_ak",1];
RPG addWeapon "hlc_rifle_akm";
removeBackpack RPG;
RPG addBackpack "B_TacticalPack_blk";
(backpackContainer RPG) addmagazinecargoGlobal ["PG7V_F",1];
RPG addWeapon "launch_RPG7V_F";
removeBackpack RPG;
RPG addBackpack "B_AFR_RPG_BAG";
clearItemCargoGlobal (backpackContainer RPG);
clearMagazineCargoGlobal (backpackContainer RPG);
clearWeaponCargoGlobal (backpackContainer RPG);
(backpackContainer RPG) addmagazinecargoGlobal ["PG7V_F",2];
RPG addVest "V_BandollierB_blk";
clearItemCargoGlobal (vestContainer RPG);
clearMagazineCargoGlobal (vestContainer RPG);
clearWeaponCargoGlobal (vestContainer RPG);
(vestContainer RPG) additemcargoGlobal ["x39_medikit",1];
(vestContainer RPG) additemcargoGlobal ["x39_bandage",4];
(vestContainer RPG) additemcargoGlobal ["x39_morphine",2];
(vestContainer RPG) additemcargoGlobal ["x39_bloodbag",1];
(vestContainer RPG) additemcargoGlobal ["x39_epinephrine",2];
RPG addUniform "U_CAF_AG_ME_ROBES_04d";
clearItemCargoGlobal (uniformContainer RPG);
clearMagazineCargoGlobal (uniformContainer RPG);
clearWeaponCargoGlobal (uniformContainer RPG);
(uniformContainer RPG) addmagazinecargoGlobal ["hlc_30Rnd_762x39_t_ak",5];
RPG addWeapon "tf_rf7800str";
RPG selectWeapon (primaryWeapon RPG);
	};
};

if (!isNil "Spreng") then {
	if (player == Spreng) exitwith {
removeallweapons Spreng;
removeallassigneditems Spreng;
removeHeadgear Spreng;
removeUniform Spreng;
removeBackpack Spreng;
removeVest Spreng;
removeGoggles Spreng;

Spreng addWeapon "ItemMap";
Spreng addWeapon "ItemWatch";
Spreng addWeapon "ItemCompass";
Spreng addWeapon "H_caf_ag_wrap";
Spreng addWeapon "Binocular";
Spreng addBackpack "B_TacticalPack_blk";
(backpackContainer Spreng) addmagazinecargoGlobal ["hlc_30Rnd_762x39_t_ak",1];
Spreng addWeapon "hlc_rifle_akm";
removeBackpack Spreng;
Spreng addBackpack "B_AFR_RPG_BAG";
clearItemCargoGlobal (backpackContainer Spreng);
clearMagazineCargoGlobal (backpackContainer Spreng);
clearWeaponCargoGlobal (backpackContainer Spreng);
(backpackContainer Spreng) additemcargoGlobal ["x39_medikit",3];
(backpackContainer Spreng) additemcargoGlobal ["x39_morphine",3];
(backpackContainer Spreng) additemcargoGlobal ["x39_bloodbag",3];
(backpackContainer Spreng) additemcargoGlobal ["x39_epinephrine",3];
Spreng addItemToBackpack "APERSTripMine_Wire_Mag";
Spreng addItemToBackpack "DemoCharge_Remote_Mag";
Spreng addItemToBackpack "DemoCharge_Remote_Mag";
Spreng addItemToBackpack "DemoCharge_Remote_Mag";
Spreng addVest "V_BandollierB_oli";
clearItemCargoGlobal (vestContainer Spreng);
clearMagazineCargoGlobal (vestContainer Spreng);
clearWeaponCargoGlobal (vestContainer Spreng);
(vestContainer Spreng) additemcargoGlobal ["x39_medikit",1];
(vestContainer Spreng) additemcargoGlobal ["x39_bandage",4];
(vestContainer Spreng) additemcargoGlobal ["x39_morphine",2];
(vestContainer Spreng) additemcargoGlobal ["x39_bloodbag",1];
(vestContainer Spreng) additemcargoGlobal ["x39_epinephrine",2];
(vestContainer Spreng) addmagazinecargoGlobal ["hlc_30Rnd_762x39_t_ak",3];
Spreng addUniform "U_CAF_AG_ME_ROBES_01d";
clearItemCargoGlobal (uniformContainer Spreng);
clearMagazineCargoGlobal (uniformContainer Spreng);
clearWeaponCargoGlobal (uniformContainer Spreng);
(uniformContainer Spreng) addmagazinecargoGlobal ["hlc_30Rnd_762x39_t_ak",5];
Spreng addWeapon "tf_rf7800str";
Spreng selectWeapon (primaryWeapon Spreng);
	};
};

if (!isNil "RPK1") then {
	if (player == RPK1) exitwith {
removeallweapons RPK1;
removeallassigneditems RPK1;
removeHeadgear RPK1;
removeUniform RPK1;
removeBackpack RPK1;
removeVest RPK1;
removeGoggles RPK1;

RPK1 addWeapon "ItemMap";
RPK1 addWeapon "ItemWatch";
RPK1 addWeapon "ItemCompass";
RPK1 addWeapon "H_caf_ag_paktol_04";
RPK1 addWeapon "Binocular";
RPK1 addBackpack "B_TacticalPack_blk";
(backpackContainer RPK1) addmagazinecargoGlobal ["hlc_75rnd_762x39_m_rpk",1];
RPK1 addWeapon "hlc_rifle_rpk";
removeBackpack RPK1;
RPK1 addVest "V_BandollierB_oli";
clearItemCargoGlobal (vestContainer RPK1);
clearMagazineCargoGlobal (vestContainer RPK1);
clearWeaponCargoGlobal (vestContainer RPK1);
(vestContainer RPK1) additemcargoGlobal ["x39_medikit",1];
(vestContainer RPK1) additemcargoGlobal ["x39_bandage",4];
(vestContainer RPK1) additemcargoGlobal ["x39_morphine",2];
(vestContainer RPK1) additemcargoGlobal ["x39_bloodbag",1];
(vestContainer RPK1) additemcargoGlobal ["x39_epinephrine",2];
(vestContainer RPK1) addmagazinecargoGlobal ["hlc_75rnd_762x39_m_rpk",3];
RPK1 addUniform "U_CAF_AG_ME_ROBES_03";
clearItemCargoGlobal (uniformContainer RPK1);
clearMagazineCargoGlobal (uniformContainer RPK1);
clearWeaponCargoGlobal (uniformContainer RPK1);
(uniformContainer RPK1) addmagazinecargoGlobal ["hlc_75rnd_762x39_m_rpk",3];
RPK1 addWeapon "tf_rf7800str";
RPK1 selectWeapon (primaryWeapon RPK1);
	};
};

if (!isNil "RPK2") then {
	if (player == RPK2) exitwith {
removeallweapons RPK2;
removeallassigneditems RPK2;
removeHeadgear RPK2;
removeUniform RPK2;
removeBackpack RPK2;
removeVest RPK2;
removeGoggles RPK2;

RPK2 addWeapon "ItemMap";
RPK2 addWeapon "ItemWatch";
RPK2 addWeapon "ItemCompass";
RPK2 addWeapon "H_caf_ag_paktol_04";
RPK2 addWeapon "Binocular";
RPK2 addWeapon "hlc_rifle_rpk";
RPK2 addVest "V_BandollierB_oli";
clearItemCargoGlobal (vestContainer RPK2);
clearMagazineCargoGlobal (vestContainer RPK2);
clearWeaponCargoGlobal (vestContainer RPK2);
(vestContainer RPK2) additemcargoGlobal ["x39_medikit",1];
(vestContainer RPK2) additemcargoGlobal ["x39_bandage",4];
(vestContainer RPK2) additemcargoGlobal ["x39_morphine",2];
(vestContainer RPK2) additemcargoGlobal ["x39_bloodbag",1];
(vestContainer RPK2) additemcargoGlobal ["x39_epinephrine",2];
(vestContainer RPK2) addmagazinecargoGlobal ["hlc_75rnd_762x39_m_rpk",3];
RPK2 addUniform "U_CAF_AG_ME_ROBES_03";
clearItemCargoGlobal (uniformContainer RPK2);
clearMagazineCargoGlobal (uniformContainer RPK2);
clearWeaponCargoGlobal (uniformContainer RPK2);
(uniformContainer RPK2) addmagazinecargoGlobal ["hlc_75rnd_762x39_m_rpk",3];
RPK2 addWeapon "tf_rf7800str";
RPK2 selectWeapon (primaryWeapon RPK2);
	};
};

if (!isNil "Gun") then {
	if (player == Gun) exitwith {
removeallweapons Gun;
removeallassigneditems Gun;
removeHeadgear Gun;
removeUniform Gun;
removeBackpack Gun;
removeVest Gun;
removeGoggles Gun;

Gun addWeapon "ItemMap";
Gun addWeapon "ItemWatch";
Gun addWeapon "ItemCompass";
Gun addWeapon "H_Shemag_khk";
Gun addWeapon "Binocular";
Gun addBackpack "B_TacticalPack_blk";
(backpackContainer Gun) addmagazinecargoGlobal ["hlc_30Rnd_762x39_t_ak",1];
Gun addWeapon "hlc_rifle_akm";
removeBackpack Gun;
Gun addVest "V_BandollierB_oli";
clearItemCargoGlobal (vestContainer Gun);
clearMagazineCargoGlobal (vestContainer Gun);
clearWeaponCargoGlobal (vestContainer Gun);
(vestContainer Gun) additemcargoGlobal ["x39_medikit",1];
(vestContainer Gun) additemcargoGlobal ["x39_bandage",4];
(vestContainer Gun) additemcargoGlobal ["x39_morphine",2];
(vestContainer Gun) additemcargoGlobal ["x39_bloodbag",1];
(vestContainer Gun) additemcargoGlobal ["x39_epinephrine",2];
(vestContainer Gun) addmagazinecargoGlobal ["hlc_30Rnd_762x39_t_ak",3];
Gun addUniform "U_CAF_AG_ME_ROBES_03a";
clearItemCargoGlobal (uniformContainer Gun);
clearMagazineCargoGlobal (uniformContainer Gun);
clearWeaponCargoGlobal (uniformContainer Gun);
(uniformContainer Gun) addmagazinecargoGlobal ["hlc_30Rnd_762x39_t_ak",5];
Gun addWeapon "tf_rf7800str";
Gun selectWeapon (primaryWeapon Gun);
	};
};

if (!isNil "Gun2") then {
	if (player == Gun2) exitwith {
removeallweapons Gun2;
removeallassigneditems Gun2;
removeHeadgear Gun2;
removeUniform Gun2;
removeBackpack Gun2;
removeVest Gun2;
removeGoggles Gun2;

Gun2 addWeapon "ItemMap";
Gun2 addWeapon "ItemWatch";
Gun2 addWeapon "ItemCompass";
Gun2 addWeapon "H_Shemag_khk";
Gun2 addWeapon "Binocular";
Gun2 addBackpack "B_TacticalPack_blk";
(backpackContainer Gun2) addmagazinecargoGlobal ["hlc_30Rnd_762x39_t_ak",1];
Gun2 addWeapon "hlc_rifle_akm";
removeBackpack Gun2;
Gun2 addVest "V_BandollierB_oli";
clearItemCargoGlobal (vestContainer Gun2);
clearMagazineCargoGlobal (vestContainer Gun2);
clearWeaponCargoGlobal (vestContainer Gun2);
(vestContainer Gun2) additemcargoGlobal ["x39_medikit",1];
(vestContainer Gun2) additemcargoGlobal ["x39_bandage",4];
(vestContainer Gun2) additemcargoGlobal ["x39_morphine",2];
(vestContainer Gun2) additemcargoGlobal ["x39_bloodbag",1];
(vestContainer Gun2) additemcargoGlobal ["x39_epinephrine",2];
(vestContainer Gun2) addmagazinecargoGlobal ["hlc_30Rnd_762x39_t_ak",3];
Gun2 addUniform "U_CAF_AG_ME_ROBES_03a";
clearItemCargoGlobal (uniformContainer Gun2);
clearMagazineCargoGlobal (uniformContainer Gun2);
clearWeaponCargoGlobal (uniformContainer Gun2);
(uniformContainer Gun2) addmagazinecargoGlobal ["hlc_30Rnd_762x39_t_ak",5];
Gun2 addWeapon "tf_rf7800str";
Gun2 selectWeapon (primaryWeapon Gun2);
	};
};

if (!isNil "Sani") then {
	if (player == Sani) exitwith {
removeallweapons Sani;
removeallassigneditems Sani;
removeHeadgear Sani;
removeUniform Sani;
removeBackpack Sani;
removeVest Sani;
removeGoggles Sani;

Sani addWeapon "ItemMap";
Sani addWeapon "ItemWatch";
Sani addWeapon "ItemCompass";
Sani addWeapon "H_caf_ag_wrap";
Sani addWeapon "Binocular";
Sani addBackpack "B_TacticalPack_blk";
(backpackContainer Sani) addmagazinecargoGlobal ["hlc_30Rnd_545x39_EP_AK",1];
Sani addWeapon "hlc_rifle_aks74u";
removeBackpack Sani;
Sani addPrimaryWeaponItem "hlc_optic_kobra";
Sani addBackpack "B_ME_RPG_BAG";
clearItemCargoGlobal (backpackContainer Sani);
clearMagazineCargoGlobal (backpackContainer Sani);
clearWeaponCargoGlobal (backpackContainer Sani);
(backpackContainer Sani) additemcargoGlobal ["x39_bandage",10];
(backpackContainer Sani) additemcargoGlobal ["x39_morphine",15];
(backpackContainer Sani) additemcargoGlobal ["x39_defibrillator",1];
(backpackContainer Sani) additemcargoGlobal ["x39_bloodbag",5];
(backpackContainer Sani) additemcargoGlobal ["x39_epinephrine",15];
(backpackContainer Sani) additemcargoGlobal ["x39_medikit5",2];
(backpackContainer Sani) additemcargoGlobal ["x39_medikit4",1];
Sani addVest "V_BandollierB_oli";
clearItemCargoGlobal (vestContainer Sani);
clearMagazineCargoGlobal (vestContainer Sani);
clearWeaponCargoGlobal (vestContainer Sani);
(vestContainer Sani) additemcargoGlobal ["x39_medikit",1];
(vestContainer Sani) additemcargoGlobal ["x39_bandage",6];
(vestContainer Sani) additemcargoGlobal ["x39_morphine",3];
(vestContainer Sani) additemcargoGlobal ["x39_bloodbag",3];
(vestContainer Sani) additemcargoGlobal ["x39_epinephrine",5];
(vestContainer Sani) addmagazinecargoGlobal ["hlc_30Rnd_545x39_EP_AK",1];
Sani addUniform "U_CAF_AG_ME_ROBES_01";
clearItemCargoGlobal (uniformContainer Sani);
clearMagazineCargoGlobal (uniformContainer Sani);
clearWeaponCargoGlobal (uniformContainer Sani);
(uniformContainer Sani) addmagazinecargoGlobal ["hlc_30Rnd_545x39_EP_AK",5];
Sani addWeapon "tf_rf7800str";
Sani selectWeapon (primaryWeapon Sani);
	};
};

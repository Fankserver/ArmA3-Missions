/**
* Generated by LEA for Arma 3
* Version: 2.0.18
* Sat May 31 19:09:55 CEST 2014
* Mission file name: [FS]co10_Operation_Holmer.Altis
* Mission name: [FS]co10_Operation_Holmer.Altis
* Required mods:
* + ArmA 3
* 
* Call the script: _dummy = [] execvm "lea\loadoutMultiplayer.sqf";
* 
*/

/**
* Loadout for crates
*/

//No named crates in this mission.

/**
* Loadout for soldiers units
*/

if (!isNil "Squadleader") then {
	if (player == Squadleader) exitwith {
removeallweapons Squadleader;
removeallassigneditems Squadleader;
removeHeadgear Squadleader;
removeUniform Squadleader;
removeBackpack Squadleader;
removeVest Squadleader;
removeGoggles Squadleader;

Squadleader addWeapon "ItemMap";
Squadleader addWeapon "ItemWatch";
Squadleader addWeapon "ItemCompass";
Squadleader addWeapon "ItemGPS";
Squadleader addWeapon "H_HelmetSpecB";
Squadleader addWeapon "Rangefinder";
Squadleader addBackpack "B_TacticalPack_blk";
(backpackContainer Squadleader) addmagazinecargoGlobal ["30Rnd_65x39_caseless_mag_Tracer",1];
Squadleader addWeapon "arifle_MX_F";
removeBackpack Squadleader;
Squadleader addPrimaryWeaponItem "acc_pointer_IR";
Squadleader addPrimaryWeaponItem "optic_Hamr";
Squadleader addBackpack "B_OutdoorPack_blk";
clearItemCargoGlobal (backpackContainer Squadleader);
clearMagazineCargoGlobal (backpackContainer Squadleader);
clearWeaponCargoGlobal (backpackContainer Squadleader);
(backpackContainer Squadleader) additemcargoGlobal ["FirstAidKit",3];
(backpackContainer Squadleader) addmagazinecargoGlobal ["30Rnd_65x39_caseless_mag_Tracer",10];
Squadleader addVest "V_PlateCarrier_Kerry";
clearItemCargoGlobal (vestContainer Squadleader);
clearMagazineCargoGlobal (vestContainer Squadleader);
clearWeaponCargoGlobal (vestContainer Squadleader);
(vestContainer Squadleader) addmagazinecargoGlobal ["30Rnd_65x39_caseless_mag_Tracer",11];
Squadleader addItemToVest "SmokeShellBlue";
Squadleader addItemToVest "SmokeShellBlue";
Squadleader addItemToVest "SmokeShellBlue";
Squadleader addItemToVest "SmokeShellBlue";
Squadleader addItemToVest "SmokeShellBlue";
Squadleader addItemToVest "MiniGrenade";
Squadleader addItemToVest "MiniGrenade";
Squadleader addItemToVest "MiniGrenade";
Squadleader addItemToVest "MiniGrenade";
Squadleader addItemToVest "MiniGrenade";
Squadleader addUniform "U_B_CombatUniform_mcam";
clearItemCargoGlobal (uniformContainer Squadleader);
clearMagazineCargoGlobal (uniformContainer Squadleader);
clearWeaponCargoGlobal (uniformContainer Squadleader);
Squadleader selectWeapon (primaryWeapon Squadleader);
	};
};

if (!isNil "Grenadier") then {
	if (player == Grenadier) exitwith {
removeallweapons Grenadier;
removeallassigneditems Grenadier;
removeHeadgear Grenadier;
removeUniform Grenadier;
removeBackpack Grenadier;
removeVest Grenadier;
removeGoggles Grenadier;

Grenadier addWeapon "ItemMap";
Grenadier addWeapon "ItemWatch";
Grenadier addWeapon "ItemCompass";
Grenadier addWeapon "ItemGPS";
Grenadier addWeapon "H_HelmetB_plain_mcamo";
Grenadier addWeapon "Rangefinder";
Grenadier addBackpack "B_TacticalPack_blk";
(backpackContainer Grenadier) addmagazinecargoGlobal ["30Rnd_65x39_caseless_mag_Tracer",1];
Grenadier addWeapon "arifle_MX_GL_F";
removeBackpack Grenadier;
Grenadier addPrimaryWeaponItem "acc_pointer_IR";
Grenadier addPrimaryWeaponItem "optic_Hamr";
Grenadier addBackpack "B_OutdoorPack_tan";
clearItemCargoGlobal (backpackContainer Grenadier);
clearMagazineCargoGlobal (backpackContainer Grenadier);
clearWeaponCargoGlobal (backpackContainer Grenadier);
(backpackContainer Grenadier) addmagazinecargoGlobal ["30Rnd_65x39_caseless_mag_Tracer",4];
(backpackContainer Grenadier) addmagazinecargoGlobal ["3Rnd_HE_Grenade_shell",7];
Grenadier addVest "V_PlateCarrierH_CTRG";
clearItemCargoGlobal (vestContainer Grenadier);
clearMagazineCargoGlobal (vestContainer Grenadier);
clearWeaponCargoGlobal (vestContainer Grenadier);
(vestContainer Grenadier) addmagazinecargoGlobal ["30Rnd_65x39_caseless_mag_Tracer",11];
Grenadier addItemToVest "SmokeShellBlue";
Grenadier addItemToVest "SmokeShellBlue";
Grenadier addItemToVest "SmokeShellBlue";
Grenadier addItemToVest "SmokeShellBlue";
Grenadier addItemToVest "MiniGrenade";
Grenadier addUniform "U_B_CombatUniform_mcam";
clearItemCargoGlobal (uniformContainer Grenadier);
clearMagazineCargoGlobal (uniformContainer Grenadier);
clearWeaponCargoGlobal (uniformContainer Grenadier);
Grenadier selectWeapon (primaryWeapon Grenadier);
	};
};

if (!isNil "Mg") then {
	if (player == Mg) exitwith {
removeallweapons Mg;
removeallassigneditems Mg;
removeHeadgear Mg;
removeUniform Mg;
removeBackpack Mg;
removeVest Mg;
removeGoggles Mg;

Mg addWeapon "ItemMap";
Mg addWeapon "ItemWatch";
Mg addWeapon "ItemCompass";
Mg addWeapon "ItemGPS";
Mg addWeapon "H_Shemag_olive";
Mg addWeapon "G_Combat";
Mg addWeapon "Rangefinder";
Mg addBackpack "B_TacticalPack_blk";
(backpackContainer Mg) addmagazinecargoGlobal ["200Rnd_65x39_cased_Box_Tracer",1];
Mg addWeapon "LMG_Mk200_F";
removeBackpack Mg;
Mg addPrimaryWeaponItem "acc_pointer_IR";
Mg addPrimaryWeaponItem "optic_Hamr";
Mg addBackpack "B_OutdoorPack_tan";
clearItemCargoGlobal (backpackContainer Mg);
clearMagazineCargoGlobal (backpackContainer Mg);
clearWeaponCargoGlobal (backpackContainer Mg);
(backpackContainer Mg) additemcargoGlobal ["FirstAidKit",2];
(backpackContainer Mg) addmagazinecargoGlobal ["200Rnd_65x39_cased_Box_Tracer",2];
Mg addVest "V_PlateCarrierH_CTRG";
clearItemCargoGlobal (vestContainer Mg);
clearMagazineCargoGlobal (vestContainer Mg);
clearWeaponCargoGlobal (vestContainer Mg);
(vestContainer Mg) addmagazinecargoGlobal ["200Rnd_65x39_cased_Box_Tracer",2];
Mg addItemToVest "SmokeShellBlue";
Mg addItemToVest "SmokeShellBlue";
Mg addItemToVest "SmokeShellBlue";
Mg addItemToVest "SmokeShellBlue";
Mg addItemToVest "MiniGrenade";
Mg addItemToVest "MiniGrenade";
Mg addItemToVest "MiniGrenade";
Mg addUniform "U_B_CombatUniform_mcam_tshirt";
clearItemCargoGlobal (uniformContainer Mg);
clearMagazineCargoGlobal (uniformContainer Mg);
clearWeaponCargoGlobal (uniformContainer Mg);
Mg selectWeapon (primaryWeapon Mg);
	};
};

if (!isNil "AT") then {
	if (player == AT) exitwith {
removeallweapons AT;
removeallassigneditems AT;
removeHeadgear AT;
removeUniform AT;
removeBackpack AT;
removeVest AT;
removeGoggles AT;

AT addWeapon "ItemMap";
AT addWeapon "ItemWatch";
AT addWeapon "ItemCompass";
AT addWeapon "ItemGPS";
AT addWeapon "H_HelmetB_plain_mcamo";
AT addWeapon "Rangefinder";
AT addBackpack "B_TacticalPack_blk";
(backpackContainer AT) addmagazinecargoGlobal ["30Rnd_65x39_caseless_mag_Tracer",1];
AT addWeapon "arifle_MX_F";
removeBackpack AT;
AT addPrimaryWeaponItem "acc_pointer_IR";
AT addPrimaryWeaponItem "optic_Hamr";
AT addBackpack "B_TacticalPack_blk";
(backpackContainer AT) addmagazinecargoGlobal ["NLAW_F",1];
AT addWeapon "launch_NLAW_F";
removeBackpack AT;
AT addBackpack "B_OutdoorPack_tan";
clearItemCargoGlobal (backpackContainer AT);
clearMagazineCargoGlobal (backpackContainer AT);
clearWeaponCargoGlobal (backpackContainer AT);
(backpackContainer AT) addmagazinecargoGlobal ["NLAW_F",1];
(backpackContainer AT) addmagazinecargoGlobal ["30Rnd_65x39_caseless_mag_Tracer",5];
AT addVest "V_PlateCarrier_Kerry";
clearItemCargoGlobal (vestContainer AT);
clearMagazineCargoGlobal (vestContainer AT);
clearWeaponCargoGlobal (vestContainer AT);
(vestContainer AT) additemcargoGlobal ["FirstAidKit",3];
(vestContainer AT) addmagazinecargoGlobal ["30Rnd_65x39_caseless_mag_Tracer",10];
AT addItemToVest "SmokeShellBlue";
AT addItemToVest "SmokeShellBlue";
AT addItemToVest "SmokeShellBlue";
AT addItemToVest "SmokeShellBlue";
AT addItemToVest "SmokeShellBlue";
AT addItemToVest "MiniGrenade";
AT addItemToVest "MiniGrenade";
AT addUniform "U_B_CombatUniform_mcam";
clearItemCargoGlobal (uniformContainer AT);
clearMagazineCargoGlobal (uniformContainer AT);
clearWeaponCargoGlobal (uniformContainer AT);
AT selectWeapon (primaryWeapon AT);
	};
};

if (!isNil "Grenadier2") then {
	if (player == Grenadier2) exitwith {
removeallweapons Grenadier2;
removeallassigneditems Grenadier2;
removeHeadgear Grenadier2;
removeUniform Grenadier2;
removeBackpack Grenadier2;
removeVest Grenadier2;
removeGoggles Grenadier2;

Grenadier2 addWeapon "ItemMap";
Grenadier2 addWeapon "ItemWatch";
Grenadier2 addWeapon "ItemCompass";
Grenadier2 addWeapon "ItemGPS";
Grenadier2 addWeapon "H_HelmetB_plain_mcamo";
Grenadier2 addWeapon "Rangefinder";
Grenadier2 addBackpack "B_TacticalPack_blk";
(backpackContainer Grenadier2) addmagazinecargoGlobal ["30Rnd_65x39_caseless_mag_Tracer",1];
Grenadier2 addWeapon "arifle_MX_GL_F";
removeBackpack Grenadier2;
Grenadier2 addPrimaryWeaponItem "acc_pointer_IR";
Grenadier2 addPrimaryWeaponItem "optic_Hamr";
Grenadier2 addBackpack "B_OutdoorPack_tan";
clearItemCargoGlobal (backpackContainer Grenadier2);
clearMagazineCargoGlobal (backpackContainer Grenadier2);
clearWeaponCargoGlobal (backpackContainer Grenadier2);
(backpackContainer Grenadier2) addmagazinecargoGlobal ["30Rnd_65x39_caseless_mag_Tracer",4];
(backpackContainer Grenadier2) addmagazinecargoGlobal ["3Rnd_HE_Grenade_shell",7];
Grenadier2 addVest "V_PlateCarrierH_CTRG";
clearItemCargoGlobal (vestContainer Grenadier2);
clearMagazineCargoGlobal (vestContainer Grenadier2);
clearWeaponCargoGlobal (vestContainer Grenadier2);
(vestContainer Grenadier2) addmagazinecargoGlobal ["30Rnd_65x39_caseless_mag_Tracer",11];
Grenadier2 addItemToVest "SmokeShellBlue";
Grenadier2 addItemToVest "SmokeShellBlue";
Grenadier2 addItemToVest "SmokeShellBlue";
Grenadier2 addItemToVest "SmokeShellBlue";
Grenadier2 addItemToVest "MiniGrenade";
Grenadier2 addUniform "U_B_CombatUniform_mcam";
clearItemCargoGlobal (uniformContainer Grenadier2);
clearMagazineCargoGlobal (uniformContainer Grenadier2);
clearWeaponCargoGlobal (uniformContainer Grenadier2);
Grenadier2 selectWeapon (primaryWeapon Grenadier2);
	};
};

if (!isNil "Grenadier3") then {
	if (player == Grenadier3) exitwith {
removeallweapons Grenadier3;
removeallassigneditems Grenadier3;
removeHeadgear Grenadier3;
removeUniform Grenadier3;
removeBackpack Grenadier3;
removeVest Grenadier3;
removeGoggles Grenadier3;

Grenadier3 addWeapon "ItemMap";
Grenadier3 addWeapon "ItemWatch";
Grenadier3 addWeapon "ItemCompass";
Grenadier3 addWeapon "ItemGPS";
Grenadier3 addWeapon "H_HelmetB_plain_mcamo";
Grenadier3 addWeapon "Rangefinder";
Grenadier3 addBackpack "B_TacticalPack_blk";
(backpackContainer Grenadier3) addmagazinecargoGlobal ["30Rnd_65x39_caseless_mag_Tracer",1];
Grenadier3 addWeapon "arifle_MX_GL_F";
removeBackpack Grenadier3;
Grenadier3 addPrimaryWeaponItem "acc_pointer_IR";
Grenadier3 addPrimaryWeaponItem "optic_Hamr";
Grenadier3 addBackpack "B_OutdoorPack_tan";
clearItemCargoGlobal (backpackContainer Grenadier3);
clearMagazineCargoGlobal (backpackContainer Grenadier3);
clearWeaponCargoGlobal (backpackContainer Grenadier3);
(backpackContainer Grenadier3) addmagazinecargoGlobal ["30Rnd_65x39_caseless_mag_Tracer",4];
(backpackContainer Grenadier3) addmagazinecargoGlobal ["3Rnd_HE_Grenade_shell",7];
Grenadier3 addVest "V_PlateCarrierH_CTRG";
clearItemCargoGlobal (vestContainer Grenadier3);
clearMagazineCargoGlobal (vestContainer Grenadier3);
clearWeaponCargoGlobal (vestContainer Grenadier3);
(vestContainer Grenadier3) addmagazinecargoGlobal ["30Rnd_65x39_caseless_mag_Tracer",11];
Grenadier3 addItemToVest "SmokeShellBlue";
Grenadier3 addItemToVest "SmokeShellBlue";
Grenadier3 addItemToVest "SmokeShellBlue";
Grenadier3 addItemToVest "SmokeShellBlue";
Grenadier3 addItemToVest "MiniGrenade";
Grenadier3 addUniform "U_B_CombatUniform_mcam";
clearItemCargoGlobal (uniformContainer Grenadier3);
clearMagazineCargoGlobal (uniformContainer Grenadier3);
clearWeaponCargoGlobal (uniformContainer Grenadier3);
Grenadier3 selectWeapon (primaryWeapon Grenadier3);
	};
};

if (!isNil "Medic") then {
	if (player == Medic) exitwith {
removeallweapons Medic;
removeallassigneditems Medic;
removeHeadgear Medic;
removeUniform Medic;
removeBackpack Medic;
removeVest Medic;
removeGoggles Medic;

Medic addWeapon "ItemMap";
Medic addWeapon "ItemWatch";
Medic addWeapon "ItemCompass";
Medic addWeapon "ItemGPS";
Medic addWeapon "H_Booniehat_grn";
Medic addWeapon "Rangefinder";
Medic addBackpack "B_TacticalPack_blk";
(backpackContainer Medic) addmagazinecargoGlobal ["30Rnd_65x39_caseless_mag_Tracer",1];
Medic addWeapon "arifle_MX_F";
removeBackpack Medic;
Medic addPrimaryWeaponItem "acc_pointer_IR";
Medic addPrimaryWeaponItem "optic_Hamr";
Medic addBackpack "B_Kitbag_mcamo";
clearItemCargoGlobal (backpackContainer Medic);
clearMagazineCargoGlobal (backpackContainer Medic);
clearWeaponCargoGlobal (backpackContainer Medic);
(backpackContainer Medic) additemcargoGlobal ["FirstAidKit",15];
(backpackContainer Medic) addmagazinecargoGlobal ["30Rnd_65x39_caseless_mag_Tracer",15];
Medic addItemToBackpack "SmokeShellBlue";
Medic addItemToBackpack "SmokeShellBlue";
Medic addItemToBackpack "SmokeShellBlue";
Medic addItemToBackpack "MiniGrenade";
Medic addItemToBackpack "MiniGrenade";
Medic addVest "V_TacVest_blk";
clearItemCargoGlobal (vestContainer Medic);
clearMagazineCargoGlobal (vestContainer Medic);
clearWeaponCargoGlobal (vestContainer Medic);
(vestContainer Medic) addmagazinecargoGlobal ["30Rnd_65x39_caseless_mag_Tracer",10];
Medic addItemToVest "SmokeShellBlue";
Medic addItemToVest "SmokeShellBlue";
Medic addItemToVest "SmokeShellBlue";
Medic addUniform "U_B_CombatUniform_mcam_tshirt";
clearItemCargoGlobal (uniformContainer Medic);
clearMagazineCargoGlobal (uniformContainer Medic);
clearWeaponCargoGlobal (uniformContainer Medic);
Medic selectWeapon (primaryWeapon Medic);
	};
};

if (!isNil "MG") then {
	if (player == MG) exitwith {
removeallweapons MG;
removeallassigneditems MG;
removeHeadgear MG;
removeUniform MG;
removeBackpack MG;
removeVest MG;
removeGoggles MG;

MG addWeapon "ItemMap";
MG addWeapon "ItemWatch";
MG addWeapon "ItemCompass";
MG addWeapon "ItemGPS";
MG addWeapon "H_Shemag_olive";
MG addWeapon "G_Combat";
MG addWeapon "Rangefinder";
MG addBackpack "B_TacticalPack_blk";
(backpackContainer MG) addmagazinecargoGlobal ["200Rnd_65x39_cased_Box_Tracer",1];
MG addWeapon "LMG_Mk200_F";
removeBackpack MG;
MG addPrimaryWeaponItem "acc_pointer_IR";
MG addPrimaryWeaponItem "optic_Hamr";
MG addBackpack "B_OutdoorPack_tan";
clearItemCargoGlobal (backpackContainer MG);
clearMagazineCargoGlobal (backpackContainer MG);
clearWeaponCargoGlobal (backpackContainer MG);
(backpackContainer MG) additemcargoGlobal ["FirstAidKit",2];
(backpackContainer MG) addmagazinecargoGlobal ["200Rnd_65x39_cased_Box_Tracer",2];
MG addVest "V_PlateCarrierH_CTRG";
clearItemCargoGlobal (vestContainer MG);
clearMagazineCargoGlobal (vestContainer MG);
clearWeaponCargoGlobal (vestContainer MG);
(vestContainer MG) addmagazinecargoGlobal ["200Rnd_65x39_cased_Box_Tracer",2];
MG addItemToVest "SmokeShellBlue";
MG addItemToVest "SmokeShellBlue";
MG addItemToVest "SmokeShellBlue";
MG addItemToVest "SmokeShellBlue";
MG addItemToVest "MiniGrenade";
MG addItemToVest "MiniGrenade";
MG addItemToVest "MiniGrenade";
MG addUniform "U_B_CombatUniform_mcam_tshirt";
clearItemCargoGlobal (uniformContainer MG);
clearMagazineCargoGlobal (uniformContainer MG);
clearWeaponCargoGlobal (uniformContainer MG);
MG selectWeapon (primaryWeapon MG);
	};
};

if (!isNil "HeavyAT") then {
	if (player == HeavyAT) exitwith {
removeallweapons HeavyAT;
removeallassigneditems HeavyAT;
removeHeadgear HeavyAT;
removeUniform HeavyAT;
removeBackpack HeavyAT;
removeVest HeavyAT;
removeGoggles HeavyAT;

HeavyAT addWeapon "ItemMap";
HeavyAT addWeapon "ItemWatch";
HeavyAT addWeapon "ItemCompass";
HeavyAT addWeapon "ItemGPS";
HeavyAT addWeapon "H_HelmetB_plain_mcamo";
HeavyAT addWeapon "Rangefinder";
HeavyAT addBackpack "B_TacticalPack_blk";
(backpackContainer HeavyAT) addmagazinecargoGlobal ["30Rnd_65x39_caseless_mag_Tracer",1];
HeavyAT addWeapon "arifle_MX_F";
removeBackpack HeavyAT;
HeavyAT addPrimaryWeaponItem "acc_pointer_IR";
HeavyAT addPrimaryWeaponItem "optic_Hamr";
HeavyAT addBackpack "B_TacticalPack_blk";
(backpackContainer HeavyAT) addmagazinecargoGlobal ["Titan_AT",1];
HeavyAT addWeapon "launch_B_Titan_short_F";
removeBackpack HeavyAT;
HeavyAT addBackpack "B_Bergen_blk";
clearItemCargoGlobal (backpackContainer HeavyAT);
clearMagazineCargoGlobal (backpackContainer HeavyAT);
clearWeaponCargoGlobal (backpackContainer HeavyAT);
(backpackContainer HeavyAT) additemcargoGlobal ["FirstAidKit",8];
(backpackContainer HeavyAT) addmagazinecargoGlobal ["30Rnd_65x39_caseless_mag_Tracer",12];
(backpackContainer HeavyAT) addmagazinecargoGlobal ["Titan_AT",1];
HeavyAT addItemToBackpack "SmokeShellBlue";
HeavyAT addItemToBackpack "SmokeShellBlue";
HeavyAT addItemToBackpack "SmokeShellBlue";
HeavyAT addItemToBackpack "MiniGrenade";
HeavyAT addItemToBackpack "MiniGrenade";
HeavyAT addVest "V_PlateCarrier_Kerry";
clearItemCargoGlobal (vestContainer HeavyAT);
clearMagazineCargoGlobal (vestContainer HeavyAT);
clearWeaponCargoGlobal (vestContainer HeavyAT);
(vestContainer HeavyAT) addmagazinecargoGlobal ["30Rnd_65x39_caseless_mag_Tracer",10];
HeavyAT addItemToVest "SmokeShellBlue";
HeavyAT addItemToVest "SmokeShellBlue";
HeavyAT addItemToVest "SmokeShellBlue";
HeavyAT addItemToVest "SmokeShellBlue";
HeavyAT addItemToVest "SmokeShellBlue";
HeavyAT addItemToVest "SmokeShellBlue";
HeavyAT addItemToVest "SmokeShellBlue";
HeavyAT addUniform "U_B_CombatUniform_mcam";
clearItemCargoGlobal (uniformContainer HeavyAT);
clearMagazineCargoGlobal (uniformContainer HeavyAT);
clearWeaponCargoGlobal (uniformContainer HeavyAT);
HeavyAT selectWeapon (primaryWeapon HeavyAT);
	};
};

if (!isNil "Medic2") then {
	if (player == Medic2) exitwith {
removeallweapons Medic2;
removeallassigneditems Medic2;
removeHeadgear Medic2;
removeUniform Medic2;
removeBackpack Medic2;
removeVest Medic2;
removeGoggles Medic2;

Medic2 addWeapon "ItemMap";
Medic2 addWeapon "ItemWatch";
Medic2 addWeapon "ItemCompass";
Medic2 addWeapon "ItemGPS";
Medic2 addWeapon "H_Booniehat_grn";
Medic2 addWeapon "Rangefinder";
Medic2 addBackpack "B_TacticalPack_blk";
(backpackContainer Medic2) addmagazinecargoGlobal ["30Rnd_65x39_caseless_mag_Tracer",1];
Medic2 addWeapon "arifle_MX_F";
removeBackpack Medic2;
Medic2 addPrimaryWeaponItem "acc_pointer_IR";
Medic2 addPrimaryWeaponItem "optic_Hamr";
Medic2 addBackpack "B_Kitbag_mcamo";
clearItemCargoGlobal (backpackContainer Medic2);
clearMagazineCargoGlobal (backpackContainer Medic2);
clearWeaponCargoGlobal (backpackContainer Medic2);
(backpackContainer Medic2) additemcargoGlobal ["FirstAidKit",15];
(backpackContainer Medic2) addmagazinecargoGlobal ["30Rnd_65x39_caseless_mag_Tracer",15];
Medic2 addItemToBackpack "SmokeShellBlue";
Medic2 addItemToBackpack "SmokeShellBlue";
Medic2 addItemToBackpack "SmokeShellBlue";
Medic2 addItemToBackpack "MiniGrenade";
Medic2 addItemToBackpack "MiniGrenade";
Medic2 addVest "V_TacVest_blk";
clearItemCargoGlobal (vestContainer Medic2);
clearMagazineCargoGlobal (vestContainer Medic2);
clearWeaponCargoGlobal (vestContainer Medic2);
(vestContainer Medic2) addmagazinecargoGlobal ["30Rnd_65x39_caseless_mag_Tracer",10];
Medic2 addItemToVest "SmokeShellBlue";
Medic2 addItemToVest "SmokeShellBlue";
Medic2 addItemToVest "SmokeShellBlue";
Medic2 addUniform "U_B_CombatUniform_mcam_tshirt";
clearItemCargoGlobal (uniformContainer Medic2);
clearMagazineCargoGlobal (uniformContainer Medic2);
clearWeaponCargoGlobal (uniformContainer Medic2);
Medic2 selectWeapon (primaryWeapon Medic2);
	};
};


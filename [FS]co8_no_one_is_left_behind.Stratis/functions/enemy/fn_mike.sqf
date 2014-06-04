//task4

//create mortars
private ["_mort1","_mort2"];
_mort1 = "O_Mortar_01_F" createVehicle (getMarkerPos "mort1");
_mort2 = "O_Mortar_01_F" createVehicle (getMarkerPos "mort2");

_mort1 setPosAtl (getMarkerPos "mort1");
_mort2 setPosAtl (getMarkerPos "mort2");

_mort1 setDir 273;
_mort2 setDir 273;

//remove mortar ammo and add mission ammo
_mort1 removeMagazines  "8Rnd_82mm_Mo_shells";
_mort1 removeMagazines  "8Rnd_82mm_Mo_Flare_white";
_mort1 removeMagazines  "8Rnd_82mm_Mo_Smoke_white";
_mort1 removeMagazines "8Rnd_82mm_Mo_guided";
_mort1 addMagazine ["8Rnd_82mm_Mo_LG",3];
_mort1 addMagazine ["8Rnd_82mm_Mo_Flare_white",8];
_mort1 addMagazine ["8Rnd_82mm_Mo_Smoke_white",3];

_mort2 removeMagazines  "8Rnd_82mm_Mo_shells";
_mort2 removeMagazines  "8Rnd_82mm_Mo_Flare_white";
_mort2 removeMagazines  "8Rnd_82mm_Mo_Smoke_white";
_mort2 removeMagazines "8Rnd_82mm_Mo_guided";
_mort2 addMagazine ["8Rnd_82mm_Mo_LG",3];
_mort2 addMagazine ["8Rnd_82mm_Mo_Flare_white",8];
_mort2 addMagazine ["8Rnd_82mm_Mo_Smoke_white",3];
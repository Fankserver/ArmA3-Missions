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
_mort1 addMagazine ["8Rnd_82mm_Mo_Smoke_white",4];

_mort2 removeMagazines  "8Rnd_82mm_Mo_shells";
_mort2 removeMagazines  "8Rnd_82mm_Mo_Flare_white";
_mort2 removeMagazines  "8Rnd_82mm_Mo_Smoke_white";
_mort2 removeMagazines "8Rnd_82mm_Mo_guided";
_mort2 addMagazine ["8Rnd_82mm_Mo_LG",3];
_mort2 addMagazine ["8Rnd_82mm_Mo_Flare_white",8];
_mort2 addMagazine ["8Rnd_82mm_Mo_Smoke_white",4];

private ["_airpat1","_airpatsol1","_airpatsol2","_airpatsol3","_airpat1wp1","_airpat1wp2","_airpat2","_airpatsol4","_airpatsol5","_airpatsol6","_airpat2wp1","_airpat2wp2","airpat1_2_3","_airpat3","_airpatsol7","_airpatsol8","_airpatsol9","_airpat3wp1","_airpat3wp2"];
//create patrol southwest
_airpat1 = createGroup EAST;
_airpatsol1 = "O_Soldier_TL_F" createUnit [getMarkerPos "airpat1_2_3", _airpat1,"",0.6,"SERGEANT"];
_airpatsol2 = "O_Soldier_AR_F" createUnit [getMarkerPos "airpat1_2_3", _airpat1,"",0.5,"PRIVATE"];
_airpatsol3 = "O_medic_F" createUnit [getMarkerPos "airpat1_2_3", _airpat1,"",0.5,"PRIVATE"];

//remove Nightvision
_airpatsol1 addEventHandler ['Killed',{(_this select 0) unassignItem 'NVGoggles_OPFOR';  (_this select 0) removeItem 'NVGoggles_OPFOR';}];
_airpatsol2 addEventHandler ['Killed',{(_this select 0) unassignItem 'NVGoggles_OPFOR';  (_this select 0) removeItem 'NVGoggles_OPFOR';}];
_airpatsol3 addEventHandler ['Killed',{(_this select 0) unassignItem 'NVGoggles_OPFOR';  (_this select 0) removeItem 'NVGoggles_OPFOR';}];

_airpat1 setCombatMode "YELLOW";
_airpat1 setBehaviour "SAFE";
_airpat1 setSpeedMode "LIMITED";

_airpat1wp1 = _airpat1 addWaypoint [getMarkerPos "airpat1",0,1];
_airpat1wp1 setWaypointType "MOVE";

//set return waypoint and cycle
_airpat1wp2 = _airpat1 addWaypoint [[(getMarkerPos "airpat1_2" select 0) +2,(getMarkerPos "airpat1_2" select 1)+2,0],0,2];
_airpat1wp2 setWaypointType "CYCLE";

//create patrol southeast
_airpat2 = createGroup EAST;
_airpatsol4 = "O_Soldier_TL_F" createUnit [getMarkerPos "airpat1_2_3", _airpat1,"",0.6,"SERGEANT"];
_airpatsol5 = "O_Soldier_AR_F" createUnit [getMarkerPos "airpat1_2_3", _airpat1,"",0.5,"PRIVATE"];
_airpatsol6 = "O_medic_F" createUnit [getMarkerPos "airpat1_2_3", _airpat1,"",0.5,"PRIVATE"];

_airpatsol4 addEventHandler ['Killed',{(_this select 0) unassignItem 'NVGoggles_OPFOR';  (_this select 0) removeItem 'NVGoggles_OPFOR';}];
_airpatsol5 addEventHandler ['Killed',{(_this select 0) unassignItem 'NVGoggles_OPFOR';  (_this select 0) removeItem 'NVGoggles_OPFOR';}];
_airpatsol6 addEventHandler ['Killed',{(_this select 0) unassignItem 'NVGoggles_OPFOR';  (_this select 0) removeItem 'NVGoggles_OPFOR';}];

_airpat2 setCombatMode "YELLOW";
_airpat2 setBehaviour "SAFE";
_airpat2 setSpeedMode "LIMITED";

_airpat2wp1 = _airpat2 addWaypoint [getMarkerPos "airpat2",0,1];
_airpat2wp1 setWaypointType "MOVE";

_airpat2wp2 = _airpat2 addWaypoint [[(getMarkerPos "airpat1_2" select 0) +2,(getMarkerPos "airpat1_2" select 1)+2,0],0,2];
_airpat2wp2 setWaypointType "CYCLE";


//create patrol west
_airpat3 = createGroup EAST;
_airpatsol7 = "O_Soldier_TL_F" createUnit [getMarkerPos "airpat1_2_3", _airpat1,"",0.6,"SERGEANT"];
_airpatsol8 = "O_Soldier_AR_F" createUnit [getMarkerPos "airpat1_2_3", _airpat1,"",0.5,"PRIVATE"];
_airpatsol9 = "O_medic_F" createUnit [getMarkerPos "airpat1_2_3", _airpat1,"",0.5,"PRIVATE"];

_airpatsol7 addEventHandler ['Killed',{(_this select 0) unassignItem 'NVGoggles_OPFOR';  (_this select 0) removeItem 'NVGoggles_OPFOR';}];
_airpatsol8 addEventHandler ['Killed',{(_this select 0) unassignItem 'NVGoggles_OPFOR';  (_this select 0) removeItem 'NVGoggles_OPFOR';}];
_airpatsol9 addEventHandler ['Killed',{(_this select 0) unassignItem 'NVGoggles_OPFOR';  (_this select 0) removeItem 'NVGoggles_OPFOR';}];

_airpat3 setCombatMode "YELLOW";
_airpat3 setBehaviour "SAFE";
_airpat3 setSpeedMode "LIMITED";

_airpat3wp1 = _airpat3 addWaypoint [getMarkerPos "airpat3",0,1];
_airpat3wp1 setWaypointType "MOVE";

_airpat3wp2 = _airpat3 addWaypoint [[(getMarkerPos "airpat1_2_3" select 0) +2,(getMarkerPos "airpat1_2_3" select 1)+2,0],0,2];
_airpat3wp2 setWaypointType "CYCLE";


//create UPS patrol
_pat4 = createGroup EAST;
_pat4_1= "O_Soldier_TL_F" createUnit [getMarkerPos "obj3", _pat4,"",0.6,"SERGEANT"];
_pat4_2 = "O_Soldier_AR_F" createUnit [getMarkerPos "obj3", _pat4,"",0.5,"PRIVATE"];
_pat4_3 = "O_Soldier_GL_F" createUnit [getMarkerPos "obj3", _pat4,"",0.5,"PRIVATE"];
_pat4_4 = "O_medic_F" createUnit [getMarkerPos "obj3", _pat4,"",0.5,"PRIVATE"];


//Urban patrol script
[(leader _pat4),"pat4","","RANDOM"] spawn ATR_fnc_ups;

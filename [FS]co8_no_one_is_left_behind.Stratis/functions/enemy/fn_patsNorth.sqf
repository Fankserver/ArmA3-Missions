//create patrol 1 north
private ["_northpat1","_northpatsol1","_northpatsol2","_northpatsol3","_northpatsol4","_northpat1wp1","_northpat1wp2","_northpat1wp3","_northpat1wp4"];

_northpat1 = createGroup EAST;
_northpatsol1 = "O_Soldier_TL_F" createUnit [getMarkerPos "northpat1_0", _northpat1,"",0.6,"SERGEANT"];
_northpatsol2 = "O_Soldier_F" createUnit [getMarkerPos "northpat1_0", _northpat1,"",0.5,"PRIVATE"];
_northpatsol3 = "O_Soldier_F" createUnit [getMarkerPos "northpat1_0", _northpat1,"",0.5,"PRIVATE"];
_northpatsol4 = "O_medic_F" createUnit [getMarkerPos "northpat1_0", _northpat1,"",0.5,"PRIVATE"];

//remove Nightvision
_northpatsol1 addEventHandler ['Killed',{(_this select 0) unassignItem 'NVGoggles_OPFOR';  (_this select 0) removeItem 'NVGoggles_OPFOR';}];
_northpatsol2 addEventHandler ['Killed',{(_this select 0) unassignItem 'NVGoggles_OPFOR';  (_this select 0) removeItem 'NVGoggles_OPFOR';}];
_northpatsol3 addEventHandler ['Killed',{(_this select 0) unassignItem 'NVGoggles_OPFOR';  (_this select 0) removeItem 'NVGoggles_OPFOR';}];
_northpatsol4 addEventHandler ['Killed',{(_this select 0) unassignItem 'NVGoggles_OPFOR';  (_this select 0) removeItem 'NVGoggles_OPFOR';}];

_northpat1 setCombatMode "YELLOW";
_northpat1 setBehaviour "SAFE";
_northpat1 setSpeedMode "LIMITED";

_northpat1wp1 = _northpat1 addWaypoint [getMarkerPos "northpat1_1",0,1];
_northpat1wp1 setWaypointType "MOVE";
_northpat1wp1 setWaypointTimeout [5,8,12];

_northpat1wp2 = _northpat1 addWaypoint [getMarkerPos "northpat1_2",0,2];
_northpat1wp2 setWaypointType "MOVE";
_northpat1wp2 setWaypointTimeout [5,8,12];

_northpat1wp3 = _northpat1 addWaypoint [getMarkerPos "northpat1_1",0,3];
_northpat1wp3 setWaypointType "MOVE";
_northpat1wp3 setWaypointTimeout [5,8,12];

//set return waypoint and cycle
_northpat1wp4 = _northpat1 addWaypoint [[(getMarkerPos "northpat1_0" select 0) +2,(getMarkerPos "northpat1_0" select 1)+2,0],0,4];
_northpat1wp4 setWaypointType "CYCLE";
_northpat1wp4 setWaypointTimeout [5,8,12];


//create patrol 2 north
private ["_northpat2","_northpatsol5","_northpatsol6","_northpatsol7","_northpatsol8","_northpat2wp1","_northpat2wp2","_northpat2wp3","_northpat2wp4"];

_northpat2 = createGroup EAST;
_northpatsol5 = "O_Soldier_TL_F" createUnit [getMarkerPos "northpat2_0", _northpat2,"",0.6,"SERGEANT"];
_northpatsol6 = "O_Soldier_F" createUnit [getMarkerPos "northpat2_0", _northpat2,"",0.5,"PRIVATE"];
_northpatsol7 = "O_Soldier_F" createUnit [getMarkerPos "northpat2_0", _northpat2,"",0.5,"PRIVATE"];
_northpatsol8 = "O_medic_F" createUnit [getMarkerPos "northpat2_0", _northpat2,"",0.5,"PRIVATE"];

//remove Nightvision
_northpatsol5 addEventHandler ['Killed',{(_this select 0) unassignItem 'NVGoggles_OPFOR';  (_this select 0) removeItem 'NVGoggles_OPFOR';}];
_northpatsol6 addEventHandler ['Killed',{(_this select 0) unassignItem 'NVGoggles_OPFOR';  (_this select 0) removeItem 'NVGoggles_OPFOR';}];
_northpatsol7 addEventHandler ['Killed',{(_this select 0) unassignItem 'NVGoggles_OPFOR';  (_this select 0) removeItem 'NVGoggles_OPFOR';}];
_northpatsol8 addEventHandler ['Killed',{(_this select 0) unassignItem 'NVGoggles_OPFOR';  (_this select 0) removeItem 'NVGoggles_OPFOR';}];

_northpat2 setCombatMode "YELLOW";
_northpat2 setBehaviour "SAFE";
_northpat2 setSpeedMode "LIMITED";

_northpat2wp1 = _northpat2 addWaypoint [getMarkerPos "northpat2_1",0,1];
_northpat2wp1 setWaypointType "MOVE";
_northpat2wp1 setWaypointTimeout [5,8,12];

_northpat2wp2 = _northpat2 addWaypoint [getMarkerPos "northpat2_2",0,2];
_northpat2wp2 setWaypointType "MOVE";
_northpat2wp2 setWaypointTimeout [5,8,12];

_northpat2wp3 = _northpat2 addWaypoint [getMarkerPos "northpat2_1",0,3];
_northpat2wp3 setWaypointType "MOVE";
_northpat2wp3 setWaypointTimeout [5,8,12];

//set return waypoint and cycle
_northpat2wp4 = _northpat2 addWaypoint [[(getMarkerPos "northpat2_0" select 0) +2,(getMarkerPos "northpat2_0" select 1)+2,0],0,4];
_northpat2wp4 setWaypointType "CYCLE";
_northpat2wp4 setWaypointTimeout [5,8,12];


//spawn sniper/spotter @ruins
_northsnip1 = createGroup EAST;
_northsnipsol1 = "O_sniper_F" createUnit [getMarkerPos "northsnip1", _northsnip1,"",0.6,"SERGEANT"];
_northsnipsol2 = "O_spotter_F" createUnit [getMarkerPos "northsnip1", _northsnip1,"",0.5,"PRIVATE"];

//sniper behaviour
_northsnip1 setBehaviour "STEALTH";
_northsnip1 setCombatMode "RED";
_northsnip1 setFormDir 220;


//create patrol 3 north
private ["_northpat3","_northpatsol9","_northpatsol10","_northpatsol11","_northpat3wp1","_northpat3wp2","_northpat3wp3","_northpat3wp4"];

_northpat3 = createGroup EAST;
_northpatsol9 = "O_Soldier_TL_F" createUnit [getMarkerPos "northpat3_0", _northpat3,"",0.6,"SERGEANT"];
_northpatsol10 = "O_Soldier_F" createUnit [getMarkerPos "northpat3_0", _northpat3,"",0.5,"PRIVATE"];
_northpatsol11 = "O_medic_F" createUnit [getMarkerPos "northpat3_0", _northpat3,"",0.5,"PRIVATE"];

//remove Nightvision
_northpatsol9 addEventHandler ['Killed',{(_this select 0) unassignItem 'NVGoggles_OPFOR';  (_this select 0) removeItem 'NVGoggles_OPFOR';}];
_northpatsol10 addEventHandler ['Killed',{(_this select 0) unassignItem 'NVGoggles_OPFOR';  (_this select 0) removeItem 'NVGoggles_OPFOR';}];
_northpatsol11 addEventHandler ['Killed',{(_this select 0) unassignItem 'NVGoggles_OPFOR';  (_this select 0) removeItem 'NVGoggles_OPFOR';}];

_northpat3 setCombatMode "YELLOW";
_northpat3 setBehaviour "SAFE";
_northpat3 setSpeedMode "LIMITED";

_northpat3wp1 = _northpat3 addWaypoint [getMarkerPos "northpat3_1",0,1];
_northpat3wp1 setWaypointType "MOVE";
_northpat3wp1 setWaypointTimeout [5,8,12];

_northpat3wp2 = _northpat3 addWaypoint [getMarkerPos "northpat3_2",0,2];
_northpat3wp2 setWaypointType "MOVE";
_northpat3wp2 setWaypointTimeout [5,8,12];

_northpat3wp3 = _northpat3 addWaypoint [getMarkerPos "northpat3_1",0,3];
_northpat3wp3 setWaypointType "MOVE";
_northpat3wp3 setWaypointTimeout [5,8,12];

//set return waypoint and cycle
_northpat3wp4 = _northpat3 addWaypoint [[(getMarkerPos "northpat3_0" select 0) +2,(getMarkerPos "northpat3_0" select 1)+2,0],0,4];
_northpat3wp4 setWaypointType "CYCLE";
_northpat3wp4 setWaypointTimeout [5,8,12];


//create patrol 4 north
private ["_northpat4","_northpatsol12","_northpatsol13","_northpatsol14","_northpat4wp1","_northpat4wp2","_northpat4wp3","_northpat4wp4"];

_northpat4 = createGroup EAST;
_northpatsol12 = "O_Soldier_TL_F" createUnit [getMarkerPos "northpat4_0", _northpat4,"",0.6,"SERGEANT"];
_northpatsol13 = "O_Soldier_F" createUnit [getMarkerPos "northpat4_0", _northpat4,"",0.5,"PRIVATE"];
_northpatsol14 = "O_medic_F" createUnit [getMarkerPos "northpat4_0", _northpat4,"",0.5,"PRIVATE"];

//remove Nightvision
_northpatsol12 addEventHandler ['Killed',{(_this select 0) unassignItem 'NVGoggles_OPFOR';  (_this select 0) removeItem 'NVGoggles_OPFOR';}];
_northpatsol13 addEventHandler ['Killed',{(_this select 0) unassignItem 'NVGoggles_OPFOR';  (_this select 0) removeItem 'NVGoggles_OPFOR';}];
_northpatsol14 addEventHandler ['Killed',{(_this select 0) unassignItem 'NVGoggles_OPFOR';  (_this select 0) removeItem 'NVGoggles_OPFOR';}];

_northpat4 setCombatMode "YELLOW";
_northpat4 setBehaviour "SAFE";
_northpat4 setSpeedMode "LIMITED";

_northpat4wp1 = _northpat4 addWaypoint [getMarkerPos "northpat4_1",0,1];
_northpat4wp1 setWaypointType "MOVE";
_northpat4wp1 setWaypointTimeout [5,8,12];

_northpat4wp2 = _northpat4 addWaypoint [getMarkerPos "northpat4_2",0,2];
_northpat4wp2 setWaypointType "MOVE";
_northpat4wp2 setWaypointTimeout [5,8,12];
         
_northpat4wp3 = _northpat4 addWaypoint [getMarkerPos "northpat4_1",0,3];
_northpat4wp3 setWaypointType "MOVE";
_northpat4wp3 setWaypointTimeout [5,8,12];

//set return waypoint and cycle
_northpat4wp4 = _northpat4 addWaypoint [[(getMarkerPos "northpat4_0" select 0) +2,(getMarkerPos "northpat4_0" select 1)+2,0],0,4];
_northpat4wp4 setWaypointType "CYCLE";
_northpat4wp4 setWaypointTimeout [5,8,12];